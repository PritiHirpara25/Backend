"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var userRouter_1 = require("./Routes/userRouter");
var hostName = '127.0.0.1';
var port = 9999;
var app = (0, express_1.default)();
app.get('/', function (request, response) {
    response.status((200)),
        response.json({
            msg: 'Hello Basic Routing'
        });
});
app.use("/api/users", userRouter_1.default);
app.listen(port, hostName, function () {
    console.log("http://".concat(hostName, ":").concat(port));
});
