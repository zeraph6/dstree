# dstree

<h5>#check version in CMakeLists.txt</h5>
<h4>------BUILD</h4>
mkdir build</br>
cd build</br>
cmake .. </br>
make</br>
<h4>------Release</h4>
mkdir release</br>
cd release</br>
cmake -DCMAKE_BUILD_TYPE=RELEASE ..</br>
make</br>
<h4>-------RUN</h4>
   <h6> 1-CREATING Index (5GB datatset)</h6>
    ./dstree --dataset /home/zeraph/lernaean-hydra/DATA/data_size25kk_25GB_seed1184_len256_znorm.bin
    --dataset-size 5000000
    --buffer-size 20000
    --leaf-size 100
    --index-path ../index5GB/
    --ascii-input 0
    --mode 0
    --timeseries-size 256
   <h6> 2-QUERYING THE INDEX</h6>
   ./dstree --queries <path_queries.bin> --queries-size <x> --index-path <path_index> --delta <> --nprob <> --beta <> 
