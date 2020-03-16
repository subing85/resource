#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export BLENDER_VERSION="blender-2.79b"
export BLENDER_PATH=$SOFTWARE_PATH/$BLENDER_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Blender"
echo "Release: 2.79b-x86_64"
echo "version: "$BLENDER_VERSION
echo ""

#python $STUDIO_PATH"/blender/__init__.py"

$BLENDER_PATH"/blender"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :