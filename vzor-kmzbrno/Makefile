all: cars.html

%.html: %.csv generate.py
	./generate.py -c $< -o $@

clean:
	rm cars.html
