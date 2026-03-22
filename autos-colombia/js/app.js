let usuarios = [];

function agregarUsuario() {
    let nombre = document.getElementById("nombre").value;

    if (nombre === "") {
        alert("Ingrese un nombre");
        return;
    }

    usuarios.push(nombre);
    mostrarUsuarios();
}

function mostrarUsuarios() {
    let lista = document.getElementById("listaUsuarios");
    lista.innerHTML = "";

    usuarios.forEach((user, index) => {
        let li = document.createElement("li");
        li.textContent = user;
        lista.appendChild(li);
    });
}