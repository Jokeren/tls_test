module load gcc/7.3.1

git clone https://github.com/HPCToolkit/hpctoolkit-externals.git
cd hpctoolkit-externals
CUR_DIR=`pwd`

./configure --prefix=$CUR_DIR/../Install
make all -j16
cd ../
