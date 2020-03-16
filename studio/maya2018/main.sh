#!/bin/bash

SOURCE_CODE="/venture/source_code/subins_tutorials/"
USD_INSTALL_ROOT="/usr/local/usd/maya2018/pixar/19.05"
USD_PYTHONPATH=$USD_INSTALL_ROOT"/lib/python/"

export PYTHONPATH=$PYTHONPATH:$SOURCE_CODE:$USD_PYTHONPATH
export MAYA_CM_DISABLE_ERROR_POPUPS=1
export MAYA_COLOR_MGT_NO_LOGGING=1 

export MAYA_PLUG_IN_PATH=$MAYA_PLUG_IN_PATH:$USD_INSTALL_ROOT/third_party/maya/plugin/
export MAYA_SCRIPT_PATH=$MAYA_SCRIPT_PATH:$USD_INSTALL_ROOT/third_party/maya/lib/usd/usdMaya/resources/:$USD_INSTALL_ROOT/third_party/maya/plugin/pxrUsdPreviewSurface/resources/ 
export XBMLANGPATH=$XBMLANGPATH:$USD_INSTALL_ROOT/third_party/maya/lib/usd/usdMaya/resources/ 
export PATH=$PATH:$USD_INSTALL_ROOT/lib:$USD_INSTALL_ROOT/bin:$USD_INSTALL_ROOT/third_party/maya/lib

echo "Autodesk Maya"
echo "Release: 2018"
echo "version: 2018.6"
echo ""

/usr/autodesk/maya2018/bin/maya 

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :