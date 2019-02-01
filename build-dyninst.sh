git clone https://github.com/Jokeren/dyninst.git && cd dyninst
git checkout dyninst-cuda-cfg
mkdir build && cd build
CUR_DIR=`pwd`

cmake .. \
-DPATH_BOOST=$CUR_DIR/../../Install/boost \
-DLIBDWARF_INCLUDE_DIR=$CUR_DIR/../../Install/libelf/include \
-DLIBDWARF_LIBRARIES=$CUR_DIR/../../Install/libelf/lib/libdw.so \
-DLIBELF_INCLUDE_DIR=$CUR_DIR/../../Install/libelf/include \
-DLIBELF_LIBRARIES=$CUR_DIR/../../Install/libelf/lib/libelf.so \
-DCMAKE_INSTALL_PREFIX=$CUR_DIR/../../Install/dyninst \
-DCMAKE_C_COMPILER=/usr/tce/packages/gcc/gcc-7.3.1/bin/gcc \
-DCMAKE_CXX_COMPILER=/usr/tce/packages/gcc/gcc-7.3.1/bin/g++

make -j16 install
cd ../..
