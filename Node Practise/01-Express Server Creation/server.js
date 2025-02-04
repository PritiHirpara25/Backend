"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var hostName = '127.0.0.1';
var port = 9999;
var app = (0, express_1.default)();
app.get('/', function (request, response) {
    response.status((200)),
        response.json({
            msg: "Hello, I am Priti"
        });
});
app.listen(port, hostName, function () {
    console.log("http://".concat(hostName, ":").concat(port));
});
