<?php
    ini_set('display_errors',1);
    error_reporting(E_ALL);

    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "belomor1945";
    $db_name = "devlinks";
    $db_tablename = "links";

    $catnames =  array('Стандарты','Учебники','Справочники','Средства разработки','Фреймворки','Библиотеки','Языки программирования','Репозитории','Графический дизайн','Прочее');

    $all_links_query = "SELECT * FROM " . $db_tablename . ";";

    $mysqli = new mysqli($db_hostname, $db_username, $db_password, $db_name);

        if ($mysqli->connect_errno) {
        echo "Не удалось подключиться к MySQL: " . $mysqli->connect_error;
    }

    $result = $mysqli->query($all_links_query);

    while ($link_data = $result->fetch_assoc()) {
        echo("<div class=\"link\">\n");
        echo("<div class=\"name\">");
        echo("<a href=\"" . $link_data['linkURL'] . "\" target=\"_blank\">");
        echo($link_data['name'] . "</a></div>\n");
        echo("<div class=\"description\">" . $link_data['description'] . "</div>\n");
        echo("<div class=\"categories\">" . decrypt_category($link_data['categories'], $catnames) . "</div>\n");
        echo("<div class=\"rating\">" . $link_data['rating'] . "</div>\n");
        echo("</div>");
    }


    function decrypt_category($category, $catnames) {
        $categories = '';
        for ($i=0; $i < 10 ; $i++) {
            if (($category & (1 << $i)) >> $i) {
            $categories = $categories . ' &bull;' . $catnames[$i]; }
        }
        return $categories;
    }
?>
