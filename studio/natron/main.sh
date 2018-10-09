#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export NATRON_VERSION="Natron-2.3.13"
export NATRON_PATH=$SOFTWARE_PATH/$NATRON_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Blender"
echo "Release: 2.3.13"
echo "version: "$NATRON_VERSION
echo ""

#python $STUDIO_PATH"/blender/__init__.py"

$NATRON_PATH"/Natron"
s
# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :