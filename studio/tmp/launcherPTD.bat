:  !/bin/bash
:
:  Launcher.bat
:  Date : July 21, 2018
:  Last modified: July 21, 2018
:  Author: Subin. Gopi (subing85@gmail.com)
:  Copyright (c) 2018, Subin Gopi
:  All rights reserved.
:
:   WARNING! All changes made in this file will be lost!
:
:  Description
:      This module for configure and launch the studio laundher application.  

@echo off

echo.
echo ....................................................
echo Launcher.bat
echo Last modified: July 21, 2018
echo Author: Subin. Gopi (subing85@gmail.com)
echo Copyright (c) 2018, Subin Gopi All rights reserved.
echo ....................................................
echo.

set DRIVE=Z:
set STUDIO_TYPE=PTD

:root
set PACKAGE_ROOT=%DRIVE%/package
set RESOURCE_PATH=%DRIVE%/resource
set BIN_PATH=%DRIVE%/bin
set PACKAGE_USER_PATH=%DRIVE%/package_users
set STUDIO_PATH=%RESOURCE_PATH%/studio

:python
set PYTHON_VERSION_LONGNAME=3.3.1
set PYTHON_VERSION_SHORTNAME=33
set COMMON_PYTHON_DIR=%RESOURCE_PATH%/python
set PYTHON_DIR=%COMMON_PYTHON_DIR%/Python%PYTHON_VERSION_SHORTNAME%
set PYTHON_LIB_PATH=%PYTHON_DIR%/Lib
set PYTHON_SITE_PACK_PATH=%PYTHON_LIB_PATH%/site-packages
set PYTHON_EXE_PATH=%PYTHON_DIR%/python.exe
set PYTHONPATH=%STUDIO_PATH%

set LAUNCHER_PATH=%STUDIO_PATH%/launcher.py

"%PYTHON_EXE_PATH%" "%LAUNCHER_PATH%"

: End: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :