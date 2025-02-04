import * as UserController from '../controller/userController.js';
import { Router } from 'express';

const userRouter = Router();

// usage : 
// http://127.0.0.1:9999/api/users/home
// method : GET

userRouter.get("/",async(request , response) => {
    await UserController.getAllUsers(request,response)
})

export default userRouter;
