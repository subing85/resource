import os
import sys
import imp
import getpass
import package


VERSION = package.getVersion()
os.environ['VERSION'] = VERSION

PACKAGE_REAL_PATH = ('%s/%s'% (os.environ['PACKAGE_ROOT'], VERSION))
if os.environ['STUDIO_TYPE']=='PTD':
    PACKAGE_REAL_PATH = ('%s/%s/%s/%s'% (os.environ['DRIVE'], 'package_users', getpass.getuser(), 'package'))
 
#package version
os.environ['PACKAGE_PATH'] = (PACKAGE_REAL_PATH)
os.environ['PACKAGE_PUBLISH_PATH'] = ('%s/%s'% (os.environ['DRIVE'], 'package'))
 
os.environ['BIN_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'bin'))
os.environ['DATA_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'data'))
os.environ['DOC_PATH'] = ('%s/%s'% ( PACKAGE_REAL_PATH, 'doc'))
os.environ['EXAMPLE_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'example'))
os.environ['ICON_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'icon'))
os.environ['MENU_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'menu'))
os.environ['MODULE_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'module'))
os.environ['TOOLKIT_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'pipe'))
os.environ['PIPE_LEGACY_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'pipeLegacy'))
os.environ['PLUGIN_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'plugin'))
os.environ['PREST_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'preset'))
os.environ['STARTUP_PATH'] = ('%s/%s'% (PACKAGE_REAL_PATH, 'toolkit'))
 
#python
os.environ['PYTHONPATH'] = ('%s;%s;%s;%s;%s;'% (os.environ['COMMON_PYTHON_DIR'],
                                                os.environ['PYTHON_DIR'],
                                                os.environ['PYTHON_LIB_PATH'],
                                                os.environ['PYTHON_SITE_PACK_PATH'],
                                                os.environ['PACKAGE_PATH']
                                                )
                            )
  
  
#studio launcher
os.environ['LAUNCHER_VERSION'] = ('%s %s'% ('Launcher', VERSION))
os.environ['LAUNCHER_PATH'] = ('%s/%s'% (os.environ['STARTUP_PATH'], 'studioLauncher.py'))
  
#show
os.environ['SHOW_INPUT_FILE'] = ('%s/%s'% (os.environ['PREST_PATH'], 'showInput.json'))
os.environ['SHOW_DEFAULT_FILE'] = ('%s/%s'% (os.environ['PREST_PATH'], 'showDefault.json'))

if os.environ['PACKAGE_PATH'] not in sys.path:
    sys.path.append(os.environ['PACKAGE_PATH'])
from startup import studioLauncher
imp.reload(studioLauncher)
studioLauncher.loadWindow()
