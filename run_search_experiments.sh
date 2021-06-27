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
BS=0
LEN=256
LS=0
FLATT=0
IS_CACHE=0

mkdir -p ./Logs/${VERSION}

for EF in 100 200 400 600 800 1000
do
sudo sync;
sudo sh -c "echo 3 >> /proc/sys/vm/drop_caches";
./cmake-build-release/hnsw --queries ${CURR_QUERIES} --queries-size ${NQ} --index-path $PWD/index/ --k ${K} --ef ${EF} --mode 1 --flatt ${FLATT} &> ./Logs/${VERSION}/HNSW_${DATASET}_${SIZE}_${BS}_${LEN}_${SIZE}_${M}_${EFC}_${QUERIES}_${NQ}_${K}_${EF}_${FLATT}_${IS_CACHE}_search.log;
done 
