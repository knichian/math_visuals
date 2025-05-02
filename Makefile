
SOURCE_PATH = src/main.c
OUT_PATH = './bin/game.html'
SHELL_FILE_PATH = './src/minshell.html'
INCLUDES_FOLDER = './external/raylib/src'
STATIC_LIB_PATH = './lib/libraylib.web.a'

all: build run


build: src/main.c
	source ./activate_emcc.sh && emcc -Os -Wall -I$(INCLUDES_FOLDER) $(STATIC_LIB_PATH) -s USE_GLFW=3 --shell-file $(SHELL_FILE_PATH) -DPLATFORM_WEB -o $(OUT_PATH) ./src/main.c

run:
	cd bin && python -m http.server

clear:
	rm -r bin/*

clean_build: clear build