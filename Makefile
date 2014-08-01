LUA_DIR = /usr/local/share/lua/5.1
ROOT_LUA = src/sparrow.lua 
SPARROW_LUAS = $(filter-out $(ROOT_LUA), $(wildcard src/*.lua)) 

all:

install:
	mkdir -p $(LUA_DIR)/sparrow
	cp $(ROOT_LUA) $(LUA_DIR)
	cp $(SPARROW_LUAS) $(LUA_DIR)/sparrow

clean:
