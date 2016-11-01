<?php
    ini_set('display_errors',1);
    error_reporting(E_ALL);

    $name = $_GET['name'];
    $linkurl = $_GET['link_URL'];
    $description = $_GET['description'];
    if (!isset($_GET['cat_standards'])) $catstandards = 0; else $catstandards = 1;
    if (!isset($_GET['cat_tutorials'])) $cattutorials = 0; else $cattutorials = 1;
    if (!isset($_GET['cat_references'])) $catreferences = 0; else $catreferences = 1;
    if (!isset($_GET['cat_devtools'])) $catdevtools = 0; else $catdevtools = 1;
    if (!isset($_GET['cat_frameworks'])) $catframeworks = 0; else $catframeworks = 1;
    if (!isset($_GET['cat_libraries'])) $catlibraries = 0; else $catlibraries = 1;
    if (!isset($_GET['cat_languages'])) $catlanguages = 0; else $catlanguages = 1;
    if (!isset($_GET['cat_repositories'])) $catrepositories = 0; else $catrepositories = 1;
    if (!isset($_GET['cat_graphdesign'])) $catgraphdesign = 0; else $catgraphdesign = 1;
    if (!isset($_GET['cat_other'])) $catother = 0; else $catother = 1;

    $category = $catstandards | $cattutorials << 1 | $catreferences << 2 | $catdevtools << 3 | $catframeworks << 4 | $catlibraries << 5 | $catlanguages << 6 | $catrepositories << 7 | $catgraphdesign << 8 | $catother << 9;
    $rating = $_GET['rating'];

    $db_hostname = "localhost";
    $db_username = "root";
    $db_password = "belomor1945";
    $db_name = "devlinks";
    $db_tablename = "links";

    $new_link_query = 'INSERT INTO ' . $db_tablename . ' (name, linkURL, description, rating, categories) VALUES (\'' . $name . '\', \'' . $linkurl . '\', \'' . $description . '\', ' . $rating . ', ' . $category . ');';

    /* Процедурный стиль работы с SQL
    $mysqli = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
    if (mysqli_connect_errno($mysqli)) {
        echo "Не удалось подключиться к MySQL: " . mysqli_connect_error();
    }
    $result = mysqli_query($mysqli, $new_link_query); */

    $mysqli = new mysqli($db_hostname, $db_username, $db_password, $db_name);
    if ($mysqli->connect_errno) {
        echo "Не удалось подключиться к MySQL: " . $mysqli->connect_error;
    }
    $result = $mysqli->query($new_link_query);
    $mysqli->close();

?>
<html>
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <a href="../webdevlinks-input-form.html">Ввести новое значение</a>
        <a href="/show_links.php">Просмотреть значения</a>
    </body>
</html>
