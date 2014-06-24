.PHONY: build install run clean

build: sizeup.app

sizeup.app: sizeup.applescript
	osacompile -o $@ $^

install: sizeup.app
	cp -R sizeup.app /Applications

run:
	./sizeup.applescript

clean:
	rm -rf sizeup.app
