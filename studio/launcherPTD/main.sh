#!/bin/bash

export PACKAGE_PATH=$PACKAGE_USER_PATH"/"$USER"/package"
export PACKAGE_PATH=$PACKAGE_USER_PATH"/"$USER"/package"
export ICON_PATH=$PACKAGE_PATH"/icon"
#export SHOW_INPUT_FILE=$PACKAGE_PATH"/preset/showInput.json"
export PACKAGE_PUBLISH_PATH=$PACKAGE_PATH
export PYTHONPATH=$PYTHONPATH:$PACKAGE_PATH

echo ""
echo "Current package version: "$USER
echo "Studio Launcher PTD"
echo "Release: 0.0.1"
echo ""

python "/venture/resource/studio/launcherPTD/__init__.py"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :