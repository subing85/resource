#!/bin/bash

export PACKAGE_PATH="/venture/source_code/subins_tutorials"
export PYTHONPATH=$PYTHONPATH':'$PACKAGE_PATH

echo $PYTHONPATH

echo ""
echo "Current package version: "$USER
echo "Eclipse Photon"
echo "Release: 0.0.1"
echo ""

/venture/software/eclipse/eclipse

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :