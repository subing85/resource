#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export ICON_PATH=$PACKAGE_PATH"/icon"
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

#blender
export SYNFIGSTUDIO_VERSION="synfigStudio-1.2"
export SYNFIGSTUDIO_PATH=$SOFTWARE_PATH/$SYNFIGSTUDIO_VERSION

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Synfig Studio"
echo "Release: 1.2"
echo "version: "$SYNFIGSTUDIO_VERSION
echo ""

#python $STUDIO_PATH"/blender/__init__.py"

$SYNFIGSTUDIO_PATH"/SynfigStudio-1.2.2-18.09.14-linux64-286f1.AppImage"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :