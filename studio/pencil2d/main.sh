#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export PENCIL2D_VERSION="pencil2d-0.6.1.1"
export PENCIL2D_PATH=$SOFTWARE_PATH/$PENCIL2D_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Pencil 2D"
echo "Release: 0.6.1.1"
echo "version: "$PENCIL2D_VERSION
echo ""

#python $STUDIO_PATH"/blender/__init__.py"

$PENCIL2D_PATH"/pencil2d-linux-amd64-0.6.1.1.AppImage"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :