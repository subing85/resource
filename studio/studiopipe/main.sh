#!/bin/bash

PACKAGE_VERSION=`python -c "import package; print package.getVersion()"`
#RESULT_FOO=`python -c 'import test; print test.get_foo()'`
#RESULT=$(python -c 'import test; print test.get_foo()')

#export PACKAGE_PATH=$PACKAGE_ROOT"/"$PACKAGE_VERSION
export PACKAGE_PATH=$PACKAGE_USER_PATH"/"$USER"/package"
export PRESET_PATH=$PACKAGE_PATH"/preset"

export ICON_PATH=$PACKAGE_PATH"/icon"
export SHOW_INPUT_FILE=$PACKAGE_PATH"/preset/showInput.json"
export PACKAGE_PUBLISH_PATH=$PACKAGE_PATH
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

echo ""
echo "Current package version: "$PACKAGE_VERSION
echo "Studio Launcher"
echo "0.0.1 Release"
echo ""

python $STUDIO_PATH"/studiopipe/__init__.py"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :