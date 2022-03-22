var nav = document.createElement("nav");
var a1 = document.createElement("a"), a2 = document.createElement("a"), /*a3 = document.createElement("a"), */a4 = document.createElement("a"); //a5 = document.createElement("a");
a1.innerHTML = 'Главная';
a2.innerHTML = 'Пересдачи';
//a3.innerHTML = 'Каталог';
a4.innerHTML = 'Контакты';
//a5.innerHTML = 'Авторизация';
a1.href = 'index.html';
a2.href = 'history.html';
//a3.href = 'Catalog.html';
a4.href = 'Contacts.html';
//a5.href = 'chop.html';
nav.appendChild(a1);
nav.appendChild(a2);
//nav.appendChild(a3);
nav.appendChild(a4);
//nav.appendChild(a5);

//////////////////////CLIENT//////////////////////////
document.body.appendChild(nav);
var connection = new WebSocket('ws://127.0.0.1:4444');
connection.onopen = function () {
	console.log('Connected!');
	connection.send('Ping'); // Send the message 'Ping' to the server
	};

	// Log errors
connection.onerror = function (error) {
	console.log('WebSocket Error ' + error);
};

			// Log messages from the server
connection.onmessage = function (e) {
		let str = e.data;
		//let newstr = str.replace('Дата', '<br>Дата');
		document.getElementById("peres").innerHTML = str;
		console.log('Server: ' + e.data);
};
