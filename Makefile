

#
CC=g++
COMPILE_FLAGS= -c -Wall -std=c++11


#	Directories
binDir=../bin
buildDir=../build

#	Default target
default:	debug


#	Debug build
debug:	COMPILE_FLAGS+= -g
debug:	$(binDir)/watch-out


#	Build dir
$(buildDir):
	mkdir --parent $(buildDir)


#	Binary dir
$(binDir):
	mkdir --parent $(binDir)


#	Link the binary
$(binDir)/watch-out:	\
					$(binDir) \
					$(buildDir)/watch-out.o
	$(CC) $(buildDir)/*.o -o $(binDir)/watch-out


#	Build watch-out.o
$(buildDir)/watch-out.o:	$(buildDir)
	$(CC) $(COMPILE_FLAGS) "Watch Out!.cpp" -o $(buildDir)/watch-out.o


#	Clean
clean:
	-rm $(buildDir)/*.o
	-rm ($binDir)/watch-out


