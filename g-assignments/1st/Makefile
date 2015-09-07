.PHONY: clean all pdf

all: g1.html

pdf: g1.pdf

%.html: %.asciidoc
	asciidoctor $*.asciidoc

%.pdf: %.asciidoc
	asciidoctor-pdf -a allow-uri-read $*.asciidoc

clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.pdfmarks
