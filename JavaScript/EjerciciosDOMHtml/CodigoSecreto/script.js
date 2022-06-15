const codigo = [];
var maxIntento = 8;

/*1. Genera una constante CODIGO_SECRETO de tipo array de 5 número aleatorios entre 0 y 9 usando la libreria Math.random();*/
function codigoSecreto() {
    for (let i = 0; i < 5; i++) {
        codigo[i] = Math.floor((Math.random() * 10));
    }
    console.log(codigo)
}

codigoSecreto();

function coger_input () {
    var userCode = document.getElementById("numero").value

    var userArray = userCode.split("")

    return userArray
}

function numero_secreto (){

    let correcto = 0

    let userArray = coger_input()
    
    var row = document.getElementsByClassName("rowResult")

    var cel = row[0].getElementsByClassName("celResult")

    var celSecreto = document.getElementsByClassName("cel")

    for (let i = 0; i < 5; i++) {
        if (cel[i].classList.contains("regular")) cel[i].classList.remove("regular")
        if (cel[i].classList.contains("correcto")) cel[i].classList.remove("correcto")
        if (cel[i].classList.contains("incorrecto")) cel[i].classList.remove("incorrecto")
        cel[i].innerHTML=userArray[i]
        if (codigo[i] == userArray[i]) {
            cel[i].classList.add("correcto")
            correcto ++
            celSecreto[i].innerHTML = userArray[i] 
        } else if (codigo.includes(parseInt(userArray[i]))){
            cel[i].classList.add("regular")
        } else {
            cel[i].classList.add("incorrecto")
        }
    } 
    info_ganar(correcto)   
}

function info_ganar (correcto) {

    let userArray = coger_input()

    var messageInfo = document.getElementById("info")

    console.log(codigo == userArray)

    if (correcto == 5){
        let botton = document.getElementById("check").remove()
        messageInfo.innerHTML ="Has ganado! Felicidades imbecil"
    } else if (maxIntento == 0) {
        var botton = document.getElementById("check").remove()
        messageInfo.innerHTML = "Has perdido todas los intento, estudia más"
    } else {
        maxIntento --
        messageInfo.innerHTML = "Bueno podrias tener por ahi algun numero mal puesto aun te quedan" + " "+ maxIntento + " " + "intentos, espabila coño"
    }

}











