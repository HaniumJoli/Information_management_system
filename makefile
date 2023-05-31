
CXX = g++

CXXFLAGS = -std=c++11

SRCS = main.cpp

OBJS = $(SRCS:.cpp=.o)

EXEC = infoman

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)
