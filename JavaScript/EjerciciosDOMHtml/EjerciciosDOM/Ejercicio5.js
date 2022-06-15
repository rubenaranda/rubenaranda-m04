function insertRow () {
    var table_row = document.getElementById("Taula");

    var tag_tr = document.createElement("tr");

    var tag_td_0 = document.createElement("td");

    var text_td_0 = document.createTextNode("Fila 3 ce·la 1");

    tag_td_0.appendChild(text_td_0);

    var tag_td_1 = document.createElement("td");

    var text_td_1 = document.createTextNode("Fila 3 ce·la 2");

    tag_td_1.appendChild(text_td_1)

    tag_tr.appendChild(tag_td_0);

    tag_tr.appendChild(tag_td_1);

    table_row.appendChild(tag_tr)
}