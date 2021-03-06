#!/bin/bash

# Replace with your identity
readonly CODE_SIGN_IDENTITY=C6DD0BCD24C737EA0505F1EB26B8BBEEDEC12F1B

set -e # forbid command failure

#
# Sign Karabiner-DriverKit-VirtualHIDDevice.dext
#

# Embed provisioning profile
cp \
    DriverKit/embedded.provisionprofile \
    build/Release/Karabiner-DriverKit-ExtensionManager.app/Contents/Library/SystemExtensions/org.pqrs.Karabiner-DriverKit-VirtualHIDDevice.dext/embedded.provisionprofile

# Sign
codesign \
    --sign $CODE_SIGN_IDENTITY \
    --entitlements DriverKit/entitlements.plist \
    --options runtime \
    --verbose \
    --force \
    build/Release/Karabiner-DriverKit-ExtensionManager.app/Contents/Library/SystemExtensions/org.pqrs.Karabiner-DriverKit-VirtualHIDDevice.dext

#
# Sign Karabiner-DriverKit-ExtensionManager.app
#

# Embed provisioning profile
cp \
    ExtensionManager/embedded.provisionprofile \
    build/Release/Karabiner-DriverKit-ExtensionManager.app/Contents/embedded.provisionprofile

# Sign
codesign \
    --sign $CODE_SIGN_IDENTITY \
    --entitlements ExtensionManager/entitlements.plist \
    --options runtime \
    --verbose \
    --force \
    build/Release/Karabiner-DriverKit-ExtensionManager.app
