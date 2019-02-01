all: build run distclean clean

build:
	./build-laghos.sh
	./build-hpctoolkit-external.sh
	./build-dyninst.sh
	./build-hpctoolkit.sh
	
run:
	$(source env.sh)
	mpirun -np 1 ./Install/hpctoolkit/bin/hpcrun -e nvidia-cuda ./Laghos/Laghos/cuda/laghos -p 0 -m ./Laghos/Laghos/data/square01_quad.mesh -rs 3 -tf 0.75 -pa

distclean:
	rm -rf hpctoolkit-externals hpctoolkit dyninst Laghos Install

clean:
	rm -rf Install
