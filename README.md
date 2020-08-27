# Vozové a lokomotivní karty KMŽ Brno I

There is no English version of this README, as we suppose this project will
only be used in the Czech Republic.

Tento repozitář obsahuje vozové a lokomotivní karty, které používáme
v [KMŽ Brno I](http://kmz-brno.cz/).

## Adresáře

 * `foto`
   Obsahuje fotografie modelů.
 * `lokomotivni`
   Obsahuje lokomotivní karty založené na šabloně [KMŽ
   Hôrky](http://kmzhorky.railnet.sk/).
 * `resources`
   Obsahuje podkladové materiály ke kartám.
 * `vzor-kmzbrno`
   Obsahuje nástroje pro generování vozových karet dle naší vlastní šablony.

## Vozové karty dle šablony KMŽ Brno I

Vozové karty se generují jako webová stránka python skriptem
[vzor-kmzbrno/generate.py](vzor-kmzbrno/generate.py).

```bash
cd vzor-kmzbrno
make example.html
```

Karty se sestavují z csv souboru, viz
[vzor-kmzbrno/example.csv](vzor-kmzbrno/example.csv).

Osvědčilo se nám tisknout karty přímo z webového prohlížeče.

Příklad vozových karet bývá k dispozici na této url:
[http://apophis.cz/files/kmz/vozove-karty/vzor-kmzbrno/](http://apophis.cz/files/kmz/vozove-karty/vzor-kmzbrno/).
