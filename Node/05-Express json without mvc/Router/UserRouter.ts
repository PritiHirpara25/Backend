import { Request , Response, Router } from "express";
import path from "path";

const jsonfile = require('jsonfile');

const userRouter:Router = Router();

userRouter.get('/' , (request:Request , response : Response) => {
    const userPathJson = path.join(__dirname , ".." , "db" , "users.json");
    jsonfile.readFile(userPathJson , (err:any , data:any) => {
        if(err) console.log(err);
        return response.json(data);
    });
})

export default userRouter;

