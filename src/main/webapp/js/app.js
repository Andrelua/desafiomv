/**
 * 
 */

//var head = document.getElementById("head");
//head.innerHTML = "Cadastramento";

var btn_add = document.getElementById("add");
var btn_del = document.getElementById("del");
var forms = document.getElementById("forms1");
var box = document.getElementById("box");
var btn_send = document.getElementById("send");

var contador = 0;

btn_add.addEventListener('click', function() {
	contador++;
	createLabel();
	createInput();
});


// <label for="food">Comida</label>
function createLabel() {

	var elemento = document.createElement('label');
	elemento.setAttribute('for', 'food' + contador);
	elemento.setAttribute('id', 'food' + contador);
	elemento.textContent = "Comida extra: ";

	box.appendChild(elemento);

}

// <input name="food" type="text" class="form-control" id="food">
function createInput() {

	var elemento = document.createElement('input');

	elemento.setAttribute('type', 'text');
	elemento.setAttribute('name', 'food' + contador);
	elemento.setAttribute('id', 'food' + contador);
	// elemento.setAttribute('autocomplete', 'off');
	// elemento.setAttribute('required', 'required');
	elemento.setAttribute('class', 'form-control');

	box.appendChild(elemento);
}

btn_del.addEventListener('click', function() {
	delLabel();
	delInput();
});

function delLabel() {

	var elemento = document.getElementById("box");
	while (elemento.firstChild) {
		elemento.removeChild(elemento.firstChild);
	}

}

function delInput() {

	var elemento = document.getElementById("box");
	while (elemento.firstChild) {
		elemento.removeChild(elemento.firstChild);
	}

}
