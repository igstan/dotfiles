module Base64 (encode) where

import Data.Bits (shiftL, shiftR, (.|.))
import Data.List (replicate)
import Data.Maybe (fromJust)
import Data.Word (Word8)
import Data.ByteString (ByteString, append, pack)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8


encode :: ByteString -> ByteString
encode bytes =
  case ByteString.foldl' transformer ([], ByteString.empty) bytes of
       ([],   acc) -> acc
       (rest, acc) -> pad rest acc
  where
    transformer ([],    acc) byte = ([byte],   acc)
    transformer ([a],   acc) byte = ([a,byte], acc)
    transformer ([a,b], acc) byte = ([], acc `append` (encode [a,b,byte]))
    encode = pack . map translate . partitionBytes


-- | If the last triplet is incomplete, i.e. it's missing one or
-- two bytes, then pad it with two, respectively one "=" signs.
--
pad :: [Word8] -> ByteString -> ByteString
pad rest acc = acc `append` encodedRest `append` padding
  where
    n           = length rest
    padding     = Char8.pack $ replicate (3-n) '='
    paddedRest  = rest ++ (replicate (3-n) 0x00)
    encodedRest = pack . map translate . take (n+1) . partitionBytes $ paddedRest


-- | Maps byte values between 0 and 63 to characters.
--
translate :: Word8 -> Word8
translate char = fromJust $ lookup char table
  where
    table = ByteString.zip (pack [0..63]) chars
    chars = Char8.pack "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


-- | Splits 3 bytes into 4 bytes wherein just the first 6 *bits* matter.
--
partitionBytes :: [Word8] -> [Word8]
partitionBytes [a,b,c] = [p,q,r,s]
  where
    p = a `shiftR` 2
    q = a `shiftL` 6 `shiftR` 2 .|. b `shiftR` 4
    r = b `shiftL` 4 `shiftR` 2 .|. c `shiftR` 6
    s = c `shiftL` 2 `shiftR` 2
