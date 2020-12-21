# dstree

<h4>------BUILD</h4>
mkdir build</br>
cd build</br>
cmake .. #check version in CMakeLists.txt</br>
make</br>
<h4>-------RUN</h4>
   <h6> 1-CREATING Index (5GB datatset)</h6>
    --dataset /home/zeraph/lernaean-hydra/DATA/data_size25kk_25GB_seed1184_len256_znorm.bin
    --dataset-size 5000000
    --buffer-size 20000
    --leaf-size 100
    --index-path ../index5GB/
    --ascii-input 0
    --mode 0
    --timeseries-size 256
