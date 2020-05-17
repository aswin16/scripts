#!/bin/sh

DATE=$(date +%d-%H-%M-%S)

rtl_sdr  -s 2400000 -f $1  ~/project/rt/code_data/$DATE.bin
