# Vozové a lokomotivní karty KMŽ Brno I

There is no English version of this README, as we suppose this project will
only be used in the Czech Republic.

Tento repozitář obsahuje vozové a lokomotivní karty, které používáme
v [KMŽ Brno I](http://kmz-brno.cz/).

## Adresáře

 * `foto`
   Obsahuje fotografie modelů.
 * `lokomotivni`
   Obsahuje lokomotivní karty založené šabloně [KMŽ
   Hôrky](http://kmzhorky.railnet.sk/).
 * `resources`
   Obsahuje podkladové materiály ke kartám.
 * `vzor-kmzbrno`
   Obsahuje nástroje pro generování vozových karet dle naší vlastní šablony.

## Vozové karty dle šablony KMŽ Brno I

Vozové karty se generují jako webová stránka php skriptem
[vozove-karty/index.php](vzor-kmzbrno/index.php).

Karty se berou z SQL databáze, vzorová data víz
[příklad](vzor-kmzbrno/vk_Horky14.sql).

Osvědčilo se nám tisknout karty přímo z webového prohlížeče.
