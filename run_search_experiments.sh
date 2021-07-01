#!/bin/bash

#sudo swapoff -a
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so
#export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtcmalloc_minimal.so.4 
DATASETS=$HOME/DATA
CURR_DATASET=$DATASETS/data_size25kk_25GB_seed1184_len256_znorm.bin
CURR_QUERIES=$DATASETS/queries_size100K_seed14784_len256_znorm.bin
DATASET=data_size1B_seed1184_len256_znorm
QUERIES=queries_size100K_seed14784_len256_znorm
VERSION=27_6_2021

M=7
EFC=700
SIZE=10000000
LS=10000
NQ=100
K=100
BS=15000
LEN=256
LS=100000
FLATT=0
IS_CACHE=0

mkdir -p ./Logs/


sudo sync;
sudo sh -c "echo 3 >> /proc/sys/vm/drop_caches";
./cmake-build-release/dstree --queries ${CURR_QUERIES} --queries-size ${NQ} --index-path $PWD/indexrand10gb/ --k ${K} --ascii-input 0 --ef ${EF} --mode 1 --in-memory 1 &> $PWD/Logs/DSTREE_${DATASET}_${SIZE}_${BS}_${LEN}_${SIZE}_${LS}_${QUERIES}_${NQ}_${K}_${0}_${0}_${IS_CACHE}_search.log;
