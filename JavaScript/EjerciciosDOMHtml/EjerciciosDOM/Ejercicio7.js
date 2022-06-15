var numberOfRows = prompt ("How many rows do you want?");

var numberOfColummns = prompt ("How many colummns do you want?")

function createTable (numberOfRows,numberOfColummns) {
    var table_row = document.getElementById("Taula");

    for (i = 0, j = numberOfColummns; i < numberOfRows; i++, j--) {
        var tr = document.createElement("tr")

        table_row.appendChild(tr)
    }

}