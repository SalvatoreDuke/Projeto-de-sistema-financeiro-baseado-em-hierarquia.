CXX      := g++
SRCDIR   := src
CXXFLAGS := -std=c++17 -Wall -Wextra -g -I$(SRCDIR)/entities
SRCS     := $(SRCDIR)/Main.cpp $(SRCDIR)/entities/Pedido.cpp
OBJS     := $(SRCS:.cpp=.o)
TARGET   := sistema

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
