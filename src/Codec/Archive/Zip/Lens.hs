module Codec.Archive.Zip.Lens where

import Codec.Archive.Zip
import Control.Lens
import Data.ByteString.Lazy
import Data.Word

archiveEntries :: Simple Lens Archive [Entry]
archiveEntries f a = z <$> f (zEntries a) where z x = a { zEntries = x }

archiveSignature :: Simple Lens Archive (Maybe ByteString)
archiveSignature f a = z <$> f (zSignature a) where z x = a { zSignature = x }

archiveComment :: Simple Lens Archive ByteString
archiveComment f a = z <$> f (zComment a) where z x = a { zComment = x }

entryRelativePath :: Simple Lens Entry FilePath
entryRelativePath f a = z <$> f (eRelativePath a) where z x = a { eRelativePath = x}

entryCompressionMethod :: Simple Lens Entry CompressionMethod
entryCompressionMethod f a = z <$> f (eCompressionMethod a) where z x = a { eCompressionMethod = x}

entryLastModified :: Simple Lens Entry Integer
entryLastModified f a = z <$> f (eLastModified a) where z x = a { eLastModified = x}

entryCRC32 :: Simple Lens Entry Word32
entryCRC32 f a = z <$> f (eCRC32 a) where z x = a { eCRC32 = x}

entryCompressedSize :: Simple Lens Entry Word32
entryCompressedSize f a = z <$> f (eCRC32 a) where z x = a { eCRC32 = x}

entryUncompressedSize :: Simple Lens Entry Word32
entryUncompressedSize f a = z <$> f (eCRC32 a) where z x = a { eCRC32 = x}

entryExtraField :: Simple Lens Entry ByteString
entryExtraField f a = z <$> f (eExtraField a) where z x = a { eExtraField = x}

entryFileComment :: Simple Lens Entry ByteString
entryFileComment f a = z <$> f (eFileComment a) where z x = a { eFileComment = x}

entryInternalFileAttributes :: Simple Lens Entry Word16
entryInternalFileAttributes f a = z <$> f (eInternalFileAttributes a) where z x = a { eInternalFileAttributes = x}

entryExternalFileAttributes :: Simple Lens Entry Word32
entryExternalFileAttributes f a = z <$> f (eExternalFileAttributes a) where z x = a { eExternalFileAttributes = x}

entryCompressedData :: Simple Lens Entry ByteString
entryCompressedData f a = z <$> f (eCompressedData a) where z x = a { eCompressedData = x}
