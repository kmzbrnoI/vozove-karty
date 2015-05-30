<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang=cs-CZ>
	<head>
		<title>Zjednodušené vozové karty - © Jan Horáček pro KMŽ Brno I 2014</title>
		<link rel=stylesheet title=Default href='Horky.css' type='text/css' media=all>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta name="author" content="Jan Horáček">
		<meta name="description" content="Zjednodušené vozové karty pro potřeby KMŽ Brno I, v 22.8.2014">
	</head>
	<body>

    <div>

    <?php
        // Generator vozovych karet
        // (c) Jan Horacek 2014
        // v 22.8.2014

        // Precist data o vozovych kartach z MySql a vytisknout vozove karty
        // Tento skript muze byt verejne pristupny - proste jen vypise vsechny zaznamy v tabulce
        // Pro selekci vozu spustte program z terminalu s argumentem doplnujicim SELECT prikaz (napr. "WHERE id=5")
        //      Toto reseni se snazi predejit sql injection od uzivatele - bezny uzivatel se dostane jen k zobrazeni dat

        $con = mysqli_connect("localhost", "vozove-karty", "slupka-od-bananu", "kmz");

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
            die();
        }

        mysqli_set_charset($con, 'utf8');

        if (!isset($argv[1])) $argv[1] = "";
        $result = mysqli_query($con, "SELECT * FROM vk_Horky14 ".$argv[1]);

        while($row = mysqli_fetch_array($result))
        {
            // parsing specialnich UIC
            // mala pismena UIC v databezi = specialni typy (ktere se do skutecneho UCI na vystupu nepisou)
            //  o = osobni vuz
            //  h = hnaci vozidlo

            if (($row['UIC'][0] == "o") || ($row['UIC'][0] == "h")) $UIC = substr($row['UIC'], 1);
            else $UIC = $row['UIC'];

            echo "<table class=\"karta ".$row['UIC'][0]."\">\n";
        	echo "\t<tr><td colspan = \"3\">DESIGNATION / OZNAČENÍ</td></tr>\n";
            echo "\t<tr><td>UIC</td><td>ČSD</td><td>Operator</td></tr>\n";
            echo "\t<tr><td>".$UIC."</td><td>".$row['CSD']."</td><td>".$row['sprava']."</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">CAR DESCRIPTION / POPIS VOZU</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">".nl2br($row['popis'])."</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">LOAD TYPE / DRUH NÁKLADU</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">".nl2br($row['druh-nakladu'])."</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">PICTURE / OBRÁZEK</td></tr>\n";
            echo "\t<tr><td colspan=\"3\"><img src=\"".$row['foto']."\" alt=\"Fotografie vozu\"></td></tr>\n";
            echo "\t<tr><td colspan=\"3\">".nl2br($row['cislo'])."</td></tr>\n";
            echo "\t<tr><td colspan=\"3\">Owner: ".$row['majitel']."</td></tr>\n";
        	echo "</table>\n";
        }

    ?>

    </div>
    <hr>
    <p>Zjednodušené vozové karty - ©&nbsp;Jan Horáček pro KMŽ&nbsp;Brno&nbsp;I 2014</p>
</body>
</html>
