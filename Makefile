CXX = clang++  # Change to g++ if preferred
CXXFLAGS = -std=c++17 -Wall -Wextra -O2
LDFLAGS = 

SRC := $(shell find . -type f -name "*.cpp")
OBJ := $(SRC:.cpp=.o)
EXECUTABLE = main

.PHONY: all clean

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXECUTABLE)
