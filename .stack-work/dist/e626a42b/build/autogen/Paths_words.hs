{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_words (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\bin"
libdir     = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\lib\\x86_64-windows-ghc-8.6.5\\words-0.1.0.0-KX0gikYVdKqAu6m0tUsL16"
dynlibdir  = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\lib\\x86_64-windows-ghc-8.6.5"
datadir    = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\share\\x86_64-windows-ghc-8.6.5\\words-0.1.0.0"
libexecdir = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\libexec\\x86_64-windows-ghc-8.6.5\\words-0.1.0.0"
sysconfdir = "D:\\workspaces\\haskell\\words\\.stack-work\\install\\aeb5ed7e\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "words_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "words_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "words_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "words_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "words_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "words_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
