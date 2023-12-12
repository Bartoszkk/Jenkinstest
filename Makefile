# Makefile to compile a single C++ file

# Compiler settings - Can change to clang++ if desired
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -Wextra -std=c++17

# Build target
TARGET = test

# Rule to link the final executable
$(TARGET): test.o
	$(CXX) $(CXXFLAGS) test.o -o $(TARGET)

# Rule to compile the source file
main.o: test.cpp
	$(CXX) $(CXXFLAGS) -c test.cpp

# Rule to clean old builds
clean:
	rm -f $(TARGET) test.o

# Declare the phony targets
.PHONY: clean
