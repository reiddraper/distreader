.PHONY: site compile

all: compile site

compile:
	ghc --make -optl"-Wl,-read_only_relocs,suppress" site.hs

site:
	./site build

clean:
	rm -rf _site/ _cache/
	rm -rf site.hi site.o site
