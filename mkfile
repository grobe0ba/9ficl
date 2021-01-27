none:VQ:
	echo usage: mk all, install, clean

all:V: lib bin

bin:V: lib
	mk -f mkfile.bin install

lib:V:
	mk -f mkfile.lib install

clean:
	cd softcore && mk clean && cd ..
	mk -f mkfile.bin clean
	mk -f mkfile.lib clean
