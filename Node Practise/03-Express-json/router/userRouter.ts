import { Router ,Request , Response } from "express";
import * as userController from '../controller/userController'

const userRouter:Router = Router();

userRouter.get("/" , async(request:Request , response:Response) =>{
    await userController.getAllUsers(request , response);
});

export default userRouter;