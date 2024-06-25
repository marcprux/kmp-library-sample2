#!/bin/sh
set -ex

gradle assembleExtraMultiPlatformLibraryXCFramework

cd multi-platform-library2/build/XCFrameworks/release/

rm -f ExtraMultiPlatformLibrary2.xcframework.zip
zip -qr ExtraMultiPlatformLibrary2.xcframework.zip ExtraMultiPlatformLibrary2.xcframework
ls -lah ExtraMultiPlatformLibrary2.xcframework.zip
shasum -a 256 ExtraMultiPlatformLibrary2.xcframework.zip

