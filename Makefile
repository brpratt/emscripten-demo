bin:
	mkdir -p bin

bin/01-hello-world: bin
	gcc ./src/01-hello-world.c -o ./bin/01-hello-world

bin/01-hello-world.wasm: bin
	emcc ./src/01-hello-world.c -o ./bin/01-hello-world.wasm

bin/01-hello-world.js: bin
	emcc ./src/01-hello-world.c -o ./bin/01-hello-world.js

bin/01-hello-world.html: bin
	emcc ./src/01-hello-world.c -gsource-map -o ./bin/01-hello-world.html
	mkdir -p bin/src
	cp ./src/01-hello-world.c ./bin/src/01-hello-world.c

bin/02-null-pointer: bin
	gcc ./src/02-null-pointer.c -o ./bin/02-null-pointer

bin/02-null-pointer.html: bin
	emcc ./src/02-null-pointer.c -gsource-map -o ./bin/02-null-pointer.html
	mkdir -p bin/src
	cp ./src/02-null-pointer.c ./bin/src/02-null-pointer.c

bin/03-file: bin
	gcc ./src/03-file.c -o ./bin/03-file

bin/03-file.html: bin
	emcc ./src/03-file.c -o ./bin/03-file.html
	# emcc ./src/03-file.c -o ./bin/03-file.html --preload-file src/03-file.txt

bin/04-js.c: bin
	emcc ./src/04-js.c -o ./bin/04-js.html

.PHONY: clean
clean:
	@rm -r bin
