#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=Gdk
Module=${Mod}-3.0
module=`echo "${Module}" | tr '[:upper:]' '[:lower:]'`
mod=`echo "${Mod}" | tr '[:upper:]' '[:lower:]'`
export PATH=`pwd`/.build/gir2swift/.build/debug:"${PATH}"
LINKFLAGS=`pkg-config --libs $module pangocairo pangoft2 pango gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module pangocairo pangoft2 pango gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
