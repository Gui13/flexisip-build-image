#!/bin/bash

git clone git://git.linphone.org/flexisip --recursive
rm -rf flexisip/WORK
cd flexisip 
./submodules/cmake-builder/prepare.py flexisip-rpm \
		-DENABLE_BC_ODBC=YES -DENABLE_SOCI=YES -DENABLE_SOCI_BUILD=YES
make -C WORK/flexisip-rpm/cmake

