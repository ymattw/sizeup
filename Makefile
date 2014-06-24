.PHONY: build run clean

build: sizeup.app

sizeup.app: sizeup.applescript
	osacompile -o $@ $^

run: build
	osascript sizeup.app

clean:
	rm -rf sizeup.app
