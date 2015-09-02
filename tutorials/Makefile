.PHONY: clean all pdf

all: linux-toolchains-and-assembly.html

pdf: linux-toolchains-and-assembly.pdf

%.html: %.asciidoc
	asciidoctor $*.asciidoc

%.pdf: %.asciidoc
	asciidoctor-pdf -a allow-uri-read $*.asciidoc

clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.pdfmarks
