#!/bin/sh
set -ex

gradle assembleMultiPlatformLibraryXCFramework

cd multi-platform-library2/build/XCFrameworks/release/

rm -f MultiPlatformLibrary2.xcframework.zip
zip -qr MultiPlatformLibrary2.xcframework.zip MultiPlatformLibrary2.xcframework
ls -lah MultiPlatformLibrary2.xcframework.zip
shasum -a 256 MultiPlatformLibrary2.xcframework.zip

