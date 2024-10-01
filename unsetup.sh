#!/bin/bash
set -e
rm -rvf "$(pwd)/MARBL/"
rm -rvf "$(pwd)/ucla-roms/"

for env in "$(pwd)"/setup_files/conda_envs/*;do
    
    if [ -d "${env}" ] ;then
	conda env remove --prefix="${env}"	
    fi
done



