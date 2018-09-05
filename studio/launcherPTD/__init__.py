#!/usr/bin/python
import sys
path = '/venture/resource/studio'
if path not in sys.path:
    sys.path.append(path)

from startup import studioLauncher
studioLauncher.loadWindow()

