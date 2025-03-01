HTMLS=cars.html example.html
FOTOS=$(wildcard foto/*)

all: $(HTMLS)

%.html: %.csv generate.py $(FOTOS)
	./generate.py -c $< -o $@

clean:
	rm $(HTMLS)

.PHONY: all clean
