CC=gcc
ICSOS_ROOT=../..
SDK=../../sdk
CFLAGS=-m32 -nostdlib -fno-builtin -static
LIBS=$(SDK)/tccsdk.c $(SDK)/libtcc1.c $(SDK)/crt1.c 
EXE=inertia.exe

$(EXE): inertia.c
	$(CC) $(CFLAGS) -o${EXE} inertia.c $(LIBS)

install: $(EXE)
	cp $(EXE) $(ICSOS_ROOT)/apps/
	cp map.txt $(ICSOS_ROOT)/apps/
	cp map2.txt $(ICSOS_ROOT)/apps/
	cp map3.txt $(ICSOS_ROOT)/apps/

uninstall:
	rm $(ICSOS_ROOT)/apps/$(EXE)

clean:
	rm $(EXE)


