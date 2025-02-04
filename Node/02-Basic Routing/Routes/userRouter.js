"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var userRouter = (0, express_1.Router)();
// http://127.0.0.1:9999/api/users/home
userRouter.get("/home", function (request, response) {
    response.json({ msg: "Hello , Welcome Home" });
});
// http://127.0.0.1:9999/api/users/insertUser
userRouter.post("/insertUser", function (request, response) {
    response.json({
        msg: "Record Inserted..."
    });
});
exports.default = userRouter;
