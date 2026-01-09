CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -02
PKG_CONFIG := pkg-config
GTKMM := gtkmm-4.0

SRC_DIR := src
BUILD_DIR := build
TARGET := app

SOURCES := $(SRC_DIR)/main.cpp
OBJECTS := $(BUILD_DIR)/main.o

CXXFLAGS := $(shell $(PGK_CONFIG) --cflags $(GTKMM))
LDFLAGS := $(shell $(PGK_CONFIG) --libs $(GTKMM))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $^ -o $@ $(LDFLAGS)

$(BUILD_DIR)/main.o: $(SRC_DIR)/main.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR) $(TARGET)

run: all
	./$(TARGET)

.PHONY: all clean run

