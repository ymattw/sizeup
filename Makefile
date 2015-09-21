.PHONY: build install run clean sizeup.app

build: sizeup.app

sizeup.app: sizeup.applescript
	osacompile -o $@ $^

install: sizeup.app
	cp -R sizeup.app /Applications

run: sizeup.app
	open $<

clean:
	rm -rf sizeup.app
