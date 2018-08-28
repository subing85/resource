'''
Package v0.1 
Date : July 21, 2018
Last modified: July 21, 2018
Author: Subin. Gopi (subing85@gmail.com)
# Copyright (c) 2018, Subin Gopi 
# All rights reserved.
# WARNING! All changes made in this file will be lost!
Description
    Package
'''
import os
import json
import warnings

PACKAGE_ROOT = os.environ['PACKAGE_ROOT']

def getVersion():
    '''
    Description -Standalone function set for operation to return the latest package version.
        :param    None
        :return   latest <str> example '0.0.0'
    '''    
    file = os.path.join(PACKAGE_ROOT, 'version.json')
    if not os.path.isfile(file):
        warnings.warn('Package not found, please release the package version')
        return None        
    data = readJsonData(file)  
      
    latest = '0.0.0'
    if 'Version' in data:
        latest = data['Version']        
    return latest
    
    
def readJsonData (file):    
    '''           
    Description -Standalone function set for operation on read data from the json file.
                 Deserialize(decode) string or unicod instance containing a JSON document to a Python object.   
        :param    file    <str>    example Z:\packages\data\showInput.json
        :return   data    <dict>
    '''
    if not file :        
        warnings.warn ('function readJsonData argument \"file\" None')        
        return False
    
    data = {}                  
    openData = open (file, 'r')
    try:
        data = json.load (openData)
    except Exception as result :
        raise Exception (result)     
    openData.close ()    
    return data 


#End####################################################################################################################    