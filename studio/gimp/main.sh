#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export GIMP_VERSION="gimp-2.10.6"
export GIMP_PATH=$SOFTWARE_PATH/$GIMP_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Blender"
echo "Release: 2.79b-x86_64"
echo "version: "$GIMP_VERSION
echo ""

# python $STUDIO_PATH"/blender/__init__.py"

# $GIMP_PATHs"/gimp"
gimp &

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :