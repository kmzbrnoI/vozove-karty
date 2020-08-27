#!/usr/bin/env python3

from typing import List
import csv
import sys
import os

TEMPLATE_MAIN = "main.html"
TEMPLATE_CARD = "card.html"
TEMPLATE_DIR = 'templates'


class ArgOpts:
    def __init__(self, carsfn=None, ofn=None, template_dir=None):
        self.carsfn = carsfn
        self.ofn = ofn
        self.template_dir = template_dir


class Car:
    pass


def parse_args(argv):
    """Parses arguments"""
    opts = ArgOpts()

    i = 0
    while i < len(argv):
        if argv[i] == '-c' and i < len(argv)-1:
            opts.carsfn = argv[i+1]
            i += 1
        elif argv[i] == '-o' and i < len(argv)-1:
            opts.ofn = argv[i+1]
            i += 1
        elif argv[i] == '-t' and i < len(argv)-1:
            opts.template_dir = argv[i+1]
            i += 1

        i += 1

    return opts


def cars(csvf) -> List[Car]:
    out = []
    reader = csv.reader(csvf, delimiter=',', quotechar='"')
    column_map = {}

    for i, line in enumerate(reader):
        if i == 0:
            for coli, name in enumerate(line):
                column_map[name.lower()] = coli
        else:
            car = Car()
            for key, val in column_map.items():
                setattr(car, key, line[val])
            out.append(car)

    return out


def generate_car(car: Car, carstr) -> str:
    for key, val in car.__dict__.items():
        carstr = carstr.replace('{{'+key+'}}', val)
    carstr = carstr.replace('{{UIC0}}', car.uic[0])
    return carstr


def generate_cars(cars, output, main_t, card_t) -> None:
    cardstr = card_t.read()
    carsstr = ''.join([generate_car(car, cardstr) for car in cars])

    for line in main_t:
        if '{{cards}}' in line:
            line = line.replace('{{cards}}', carsstr)
        output.write(line)


if __name__ == "__main__":
    args = parse_args(sys.argv)

    output = open(args.ofn, 'w', encoding='utf-8') if args.ofn else sys.stdout
    csvf = (open(args.carsfn, 'r', encoding='utf-8')
            if args.carsfn else sys.stdin)
    template_dir = args.template_dir if args.template_dir else TEMPLATE_DIR

    path_main = os.path.join(template_dir, TEMPLATE_MAIN)
    path_card = os.path.join(template_dir, TEMPLATE_CARD)

    cars_ = cars(csvf)

    with open(path_main, 'r', encoding='utf-8') as main, \
         open(path_card, 'r', encoding='utf-8') as card:
        generate_cars(cars_, output, main, card)

    # ofn will be closed automatically here
