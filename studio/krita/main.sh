#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export KRITA_VERSION="krita-4.1.3"
export KRITA_PATH=$SOFTWARE_PATH/$KRITA_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Krita"
echo "Release: 4.1.3-x86_64"
echo "version: "$KRITA_VERSION
echo ""

#python $STUDIO_PATH"/blender/__init__.py"

$KRITA_PATH"/krita-4.1.3-x86_64.appimage"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :