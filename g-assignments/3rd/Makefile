.PHONY: clean all pdf

all: g3.html

pdf: g3.pdf

%.html: %.asciidoc
	asciidoctor $*.asciidoc

%.pdf: %.asciidoc
	asciidoctor-pdf -a allow-uri-read $*.asciidoc

clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.pdfmarks
