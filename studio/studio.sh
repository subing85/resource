#!/bin/bash
#
#  Studio Bash v0.0.1
#  Date : August 29, 2018
#  Last modified: ASeptember 06, 2018
#  Author# Subin. Gopi (subing85@gmail.com)
#  Copyright (c) 2018, Subin Gopi
#  All rights reserved.
#
#   WARNING! All changes made in this file will be lost!
#
#  Description
#      This bash module for configure and launch the studio application or bundles.  

#clear
function studio 
	{
		studio_path="/venture/resource/studio"		
		if [ -d $studio_path ]; then
			#set core environment variables
			source $studio_path"/studioEnv.sh"
			
			#collect avilable bundles
			files=`ls -D $studio_path`	
			declare -a bundels			
			let count=0			
			for each_file in $files; do
				if [[ $each_file != *"."* ]]; then
					bundels[$count]=$each_file
					((count++))
				fi
			done
			
			#help			
			let count=1
			if [ $1 = "--help" ] || [ $1 = "-h" ]; then
				echo "Avilable bulndels are"
				for each_bundle in ${bundels[@]}; do
					echo "  "$count". [ "$each_bundle" ]	example: studio -a or --app "$each_bundle  "-s or --show showname"
					((count++))
				done
			fi			

			#set show		
			if [ ! -s $3 ] || [ ! -show $3 ]; then
				export CURRENT_SHOW=$4
				echo "CURRENT_SHOW #3 :  "$CURRENT_SHOW	
			fi					
			
			#execute bundle main
			if [ $1 = "--app" ] || [ $1 = "-a" ]; then
				current_bundle=$STUDIO_PATH"/"$2"/main.sh"				
				if [ -f $current_bundle ]; then
					source $current_bundle
					echo $current_bundle
				else
					echo "not found bundle "$current_bundle
				fi
			fi	
		else
			echo "not found directory "$studio_path
		fi 	
	}
studio $1 $2 $3 $4 
