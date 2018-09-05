#!/bin/bash

export PACKAGE_PATH=$PACKAGE_USER_PATH"/"$USER"/package"
export PACKAGE_PATH=$PACKAGE_USER_PATH"/"$USER"/package"
export ICON_PATH=$PACKAGE_PATH"/icon"
export SHOW_INPUT_FILE=$PACKAGE_PATH"/preset/showInput.json"
export PACKAGE_PUBLISH_PATH=$PACKAGE_PATH


#python $STUDIO_PATH"/package.py" "getVersion()"
#chmod +x $STUDIO_PATH"/package.py

export PYTHONPATH=$PACKAGE_PATH

python "/venture/resource/studio/launcherPTD/__init__.py"

echo ""
echo "Studio Launcher"
echo "0.0.1 Release"
echo ""

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :