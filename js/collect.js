/*
    collect.js
    Собирает информацию из статического html-файла о ссылках и преобразует
    полученный массив в JSON.
*/

function my_JSONData(name, value) {
    return "\"" + name + "\":\"" + value + "\"";
}

function my_JSONObject(JSON_data_array) {
    var obj = "{";
    for (var i = 0; i < JSON_data_array.length-1; i++) {
        obj = obj + JSON_data_array[i] + ",";
    }
    obj = obj + JSON_data_array[JSON_data_array.length-1] + "}";
    return obj;
}

function my_JSONArray(name, JSON_object_array) {
    var array = "{\"" + name + "\":[\n";
    for (var i = 0; i < JSON_object_array.length-1; i++) {
        array = array + "\t" + JSON_object_array[i] + ",\n";
    }
    array = array + "\t" + JSON_object_array[i] + "\n]}";
    return array;
}

var JSON_record_array = [];
for(let record of document.getElementsByClassName('source')) {
    JSON_record_array.push(my_JSONObject([
        my_JSONData('name', record.getElementsByClassName('name')[0].innerHTML),
        my_JSONData('link_name', record.getElementsByTagName('A')[0].innerHTML),
        my_JSONData('link_URL', record.getElementsByTagName('A')[0].href),
        my_JSONData('category', record.getElementsByClassName('category')[0].innerHTML),
        my_JSONData('description', record.getElementsByClassName('description')[0].innerHTML),
        my_JSONData('rating', record.getElementsByClassName('rating')[0].getElementsByClassName('fa-star').length)
    ]));
}

var JSON_records = my_JSONArray('records', JSON_record_array);
var linkRecords = JSON.parse(JSON_records);

console.log(linkRecords);
