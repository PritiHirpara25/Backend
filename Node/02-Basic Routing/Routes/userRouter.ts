import express , {Application , Request , Response , Router} from 'express';
import { request } from 'http';

const userRouter:Router = Router();

// usage : 
// http://127.0.0.1:9999/api/users/home
// method : GET
userRouter.get("/home",(request:Request , response:Response) => {
    response.json({msg : "Hello , Welcome Home"});
})

// usage : 
// http://127.0.0.1:9999/api/users/insertUser
// method : POST
userRouter.post("/insertUser" , (request:Request , response:Response) => {
    response.json({
        msg : "Record Inserted..."
    })
})

export default userRouter;
