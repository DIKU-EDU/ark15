.PHONY: clean all pdf

all: g2.html

pdf: g2.pdf

%.html: %.asciidoc
	asciidoctor $*.asciidoc

%.pdf: %.asciidoc
	asciidoctor-pdf -a allow-uri-read $*.asciidoc

clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.pdfmarks
