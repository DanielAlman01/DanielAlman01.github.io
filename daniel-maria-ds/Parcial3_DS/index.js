let baseUrl = "http://localhost:8080";
let seccion = [];

function ObtenerSeccion() {
    let x
    let y
    let imagen
    let txt
    for (let i = 1; i <= 9; i++) {
        fetch(baseUrl + '/contenidos?id=parte-seccion-' + i)
            .then(res => res.json())
            .then(json => {
                if (i == 1) {
                        x = document.getElementById('tituloentra0');
                        y = document.getElementById('parrafoentra0')
                        txt = document.createTextNode(json[0]['titulo'])
                        x.appendChild(txt);
                        txt = document.createTextNode(json[0]['parrafo'])
                        y.appendChild(txt)
                } else if (i == 2) {
                    Object.keys(json).forEach(function (llave) {
                        x = document.getElementById('titulo'+ llave)
                        y = document.getElementById('imagen' + llave)
                        y.src = json[llave]['imagen']
                        txt = document.createTextNode(json[llave]['titulo'])
                        x.appendChild(txt)
                    })
                } else if (i == 3) {
                    x = document.getElementById('titulo4');
                    y = document.getElementById('parrafo0')
                    imagen = document.getElementById('creaimagen0')
                    imagen.src = json[0]['imagen']
                    txt = document.createTextNode(json[0]['titulo'])
                    x.appendChild(txt);
                    txt = document.createTextNode(json[0]['parrafo'])
                    y.appendChild(txt)
                } else if (i == 4) {
                    Object.keys(json).forEach(function (llave) {
                            x = document.getElementById('nombreperso' + llave);
                            y = document.getElementById('parradoequipo' + llave)
                            imagen = document.getElementById('imagenperso' + llave)
                            imagen.src = json[llave]['imagen']
                            txt = document.createTextNode(json[llave]['titulo'])
                            x.appendChild(txt);
                            txt = document.createTextNode(json[llave]['parrafo'])
                            y.appendChild(txt)    
                    })
                } else if (i == 5) {
                    x = document.getElementById('tituloweb');
                    imagen = document.getElementById('imagenproducto0')
                    imagen.src = json[0]['imagen']
                    txt = document.createTextNode(json[0]['titulo'])
                    x.appendChild(txt);
                } else if (i == 6) {
                    x = document.getElementById('titulofinal')
                    y = document.getElementById('parrafofinal')
                    imagen = document.getElementById('imagenfinal')
                    imagen.src = json[llave]['imagen']
                    txt = document.createTextNode(json[0]['titulo'])
                    x.appendChild(txt)
                    txt = document.createTextNode(json[0]['parrafo'])
                    y.appendChild(txt)
                } 
            });
    }
}
