# the compiler of choice (flags might not work with other compilers)
CXX       := g++
# compiler flags
CXX_FLAGS := --std=c++17 -g


# directory for bin files
BIN     := bin
# directory for source files
SRC     := src
# directory for include (header) files
INCLUDE := include
# directory for library files
LIB     := lib


# the libraries to be linked; targets all library files in the specified directory; if you wish to target only certain libraries, write a list of files separated by spaces like so: $(LIB)/libfoo.so $(LIB)/libbar.so $(LIB)/libbaz.so (make will automatically convert the list into -l flags)
LIBRARIES       := $(wildcard $(LIB)/*)
# the source code files to be compiled; targets all c++ files; if you wish to target all files, use $(wildcard $(SRC)/*) or if you wish to target only specific files you can write a list of files separated by spaces
SOURCE_FILES    := $(wildcard src/*.cpp)
# You can add anything to whatever you already specified above like so:
# SOURCE_FILES  += $(wildcard $(SRC)/*.c)
# or
# SOURCE_FILES  += $(SRC)/foo.c $(SRC)/bar.c $(SRC)/baz.c
# this is useful if you only want to target files of two specific extensions (or more) or files of a specific extension (or more) and some exceptions


# name of the executable
EXECUTABLE  := main
# path where the compiled executable will be saved
EXECUTABLE_PATH := $(BIN)/$(EXECUTABLE)

compile:
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $(SOURCE_FILES) -o $(EXECUTABLE_PATH) -L$(LIB) $(LIBRARIES) 