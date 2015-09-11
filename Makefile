all:
	gcc bloom.c bloom_test.c -lm -lcrypto -o ./dist/blm
	gcc bloom.c bloom_export_import.c -lm -lcrypto -o ./dist/blmix
	gcc bloom.c bloom_on_disk.c -lm -lcrypto -o ./dist/blmd
omp:
	if [ -e ./dist/blmmt ]; then rm ./dist/blmmt; fi;
	gcc bloom.c bloom_multi_thread.c -lm -lcrypto -o ./dist/blmmt -fopenmp
clean:
	if [ -e ./dist/blm ]; then rm ./dist/blm; fi;
	if [ -e ./dist/blmix ]; then rm ./dist/blmix; fi;
	if [ -e ./dist/blmd ]; then rm ./dist/blmd; fi;
	if [ -e ./dist/test.blm ]; then rm ./dist/test.blm; fi;
