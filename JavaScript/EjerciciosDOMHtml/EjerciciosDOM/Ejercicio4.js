function getAttributes () {
    var paragraph = document.getElementById("itb");
    
    let attributes = paragraph.getAttributeNames()

    let attributes_array = [];

    for (i = 0; i < attributes.length; i++) {
        attributes_array.push(paragraph.getAttribute(attributes[i]))
    }

    console.log(attributes_array)
}