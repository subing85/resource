#!/bin/bash
#
#  Studion Env v0.0.1
#  Date : August 29, 2018
#  Last modified: August 29, 2018
#  Author# Subin. Gopi (subing85@gmail.com)
#  Copyright (c) 2018, Subin Gopi
#  All rights reserved.
#
#   WARNING! All changes made in this file will be lost!
#
#  Description
#      This bash module to set core environment variables.  

echo ""
echo "####################################################"
echo "Studio Env v0.0.1"
echo "Last modified: September 06, 2018"
echo "Author: Subin. Gopi (subing85@gmail.com)"
echo "Copyright (c) 2018, Subin Gopi All rights reserved."
echo "####################################################"

export DRIVE="/venture"

#root
export PACKAGE_ROOT=$DRIVE$"/package"
export RESOURCE_PATH=$DRIVE$"/resource"
export BIN_PATH=$DRIVE$"/bin"
export PACKAGE_USER_PATH=$DRIVE$"/packages"
export STUDIO_PATH=$RESOURCE_PATH$"/studio"

#python
export PYTHON_VERSION_LONGNAME="2.7.1-64"
export PYTHON_VERSION_SHORTNAME="2.7"
export COMMON_PYTHON_DIR=$RESOURCE_PATH"/python"
export PYTHON_DIR=$COMMON_PYTHON_DIR"/python-"$PYTHON_VERSION_LONGNAME
export PYTHON_LIB_PATH=$PYTHON_DIR$"/Lib"
export PYTHON_SITE_PACK_PATH=$PYTHON_LIB_PATH$"/site-packages"
# export PYTHONPATH=$PYTHON_DIR:$STUDIO_PATH
export PYTHONPATH=$STUDIO_PATH

#software
export SOFTWARE_PATH=$DRIVE$"/software"

#data base
export DATABASE_PATH=$DRIVE$"/database"

# End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :