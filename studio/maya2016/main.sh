#!/bin/bash

export SOURCE_CODE="/venture/source_code/subins_tutorials/"
export PYTHONPATH=$PYTHONPATH:$SOURCE_CODE
# export MAYA_PLUG_IN_PATH="/venture/subins_tutorials/crowd/plug-in"
export MAYA_PLUG_IN_PATH=$SOURCE_CODE"/subins_tutorials/studio_uv/plug-in:$SOURCE_CODE/subins_tutorials/studio_alembic/plug-in"

echo "Maya"
echo "Release: 2016"
echo "version: 2016-SP.6"
echo ""

/usr/autodesk/maya2016/bin/maya 

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :