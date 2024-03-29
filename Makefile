CC = g++
LANG_STD = -std=c++17
COMPILER_FLAGS = -Wall -Wfatal-errors
SRC_FILES = ./src/*.cpp ./src/Game/*.cpp ./src/Logger/*.cpp ./src/ECS/*.cpp ./src/AssetStore/*.cpp
LINKER_FLAGS = -lSDL2 -lSDL2_image
OBJ_NAME = gameengine

.PHONY : deps build all run clean

all: deps build

deps:
	sudo apt install libsdl2-dev libsdl2-2.0-0 -y
	sudo apt install libjpeg-dev libwebp-dev libtiff5-dev libsdl2-image-dev libsdl2-image-2.0-0 -y
	sudo apt install libglm-dev

build:
	$(CC) $(COMPILER_FLAGS) $(LANG_STD) $(SRC_FILES) $(LINKER_FLAGS) -o $(OBJ_NAME)

run:
	./$(OBJ_NAME)

clean:
	rm $(OBJ_NAME)


