function showName() {
    let name_element = document.getElementsByName("nom");

    let cognom_element = document.getElementsByName("cognom");

    let name = name_element[0].value

    let cognom = cognom_element[0].value

 console.log(name,cognom)
}

