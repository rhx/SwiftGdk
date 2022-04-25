#!/bin/sh
#
# Remove Packages directory and generated files
#
. ./config.sh
./clean.sh
exec rm -rf .swiftpm Package.pins Packages Package.resolved docs .docs.old Sources/${Mod}/*-*.swift Sources/${Mod}/${Module}.swift Sources/${Mod}/Swift${Mod}.swift ${Mod}.xcodeproj
