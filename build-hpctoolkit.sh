git clone https://github.com/HPCToolkit/hpctoolkit.git
cd hpctoolkit
git checkout ompt-device-cfg
mkdir build && cd build
CUR_DIR=`pwd`

../configure --prefix=$CUR_DIR/../../Install/hpctoolkit -with-externals=$CUR_DIR/../../Install --with-dyninst-type=cuda --with-symtabAPI=$CUR_DIR/../../Install/dyninst --enable-develop --with-boost=/$CUR_DIR/../../Install/boost --with-cuda=$CUDA_HOME --with-cupti=$CUDA_HOME/extras/CUPTI --with-libelf=$CUR_DIR/../../Install/libelf LDFLAGS=-Wl,-rpath=$CUR_DIR/../../Install/boost/lib,-rpath=$CUR_DIR/../../Install/dyninst/lib CXX=/usr/tce/packages/gcc/gcc-7.3.1/bin/g++ CC=/usr/tce/packages/gcc/gcc-7.3.1/bin/gcc

make install -j16
cd ../..
