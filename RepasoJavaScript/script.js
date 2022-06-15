var codigo = [];
var maxIntento = 8;
var arrayUserNumbers = [];
var numberOfRows = 0

/*1. Genera una constante CODIGO_SECRETO de tipo array de 5 número aleatorios entre 0 y 9 usando la libreria Math.random();*/
function codigoSecreto() {
    for (let i = 0; i < 5; i++) {
        codigo[i] = Math.floor((Math.random() * 10));
    }
}
codigoSecreto();

/* 2. Seccion comprobar */

function getNumber () {

    let userNumber = document.getElementById("numero").value
    
    var arrayUserNumbers = userNumber.split("")

    return arrayUserNumbers
}

function checkNumbers () {

    let row = document.getElementsByClassName("rowResult")

    let cel = row[numberOfRows].getElementsByClassName("celResult")

    var correct =  0

   let userNumber = getNumber()

   let letters = /[a-z]$/.test(userNumber)

   if (letters == false) {

   console.log(letters)

   console.log(codigo,userNumber)

    for (let i = 0; i < 5; i++) {
        if (codigo[i] == userNumber[i]){
            cel[i].classList.add("correct")
            correct ++
        } else if (codigo.includes(parseInt(userNumber[i]))){
            cel[i].classList.add("notInPosition")
        }else {
            cel[i].classList.add("incorrect")
        }
    } 
    info(correct)
    resutl()
} else {
    wrongNumber()
}
    
}

/* Seccion Info */
function info (correct) {

    let messageInfo = document.getElementById("info")

    if (correct == 5) {
        messageInfo.innerHTML = "Felisidades as ganado"
        let deleteButton = document.getElementById("check").remove()
    } else if (maxIntento == 1) {
        messageInfo.innerHTML = "As perdido pringao"
        let deleteButton = document.getElementById("check").remove()
    } else {
        maxIntento --
        messageInfo.innerHTML = "Bueno intentalo mas fuerte crack, te quedan"+" "+maxIntento+" "+"intentos"
    }
}


function createTables() {
    let root = document.getElementById("Result") 

    let rowResult = document.createElement("div")

    rowResult.setAttribute("class","rowResult w100 flex wrap")

    for (let i =0; i < 5;i++){
        let celContainer = document.createElement("div")
        celContainer.setAttribute("class","w20")
        let celResult = document.createElement("div")
        celResult.setAttribute("class","celResult flex")
        celContainer.appendChild(celResult)
        rowResult.appendChild(celContainer)
    }
    root.appendChild(rowResult)
}

function resutl () {
    let userNumber = getNumber()

    let row = document.getElementsByClassName("rowResult")

    let cel = row[numberOfRows].getElementsByClassName("celResult")
    
    for (let j =0;j < 5; j++){
        cel[j].innerHTML=userNumber[j]
    }
    
    numberOfRows++

    if(numberOfRows < 7 ){
        createTables()
    }
    
}

/* Extra activities*/

function wrongNumber() {
    alert("Tu que letras no bro")
}
