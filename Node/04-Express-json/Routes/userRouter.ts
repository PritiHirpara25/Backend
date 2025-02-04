import {Request , Response , Router} from 'express';
import * as UserController from '../controller/userController';

const userRouter:Router = Router();

// usage : 
// http://127.0.0.1:9999/api/users/home
// method : GET

userRouter.get("/",async(request:Request , response:Response) => {
    await UserController.getAllUsers(request,response)
})

export default userRouter;


// userRouter.get("/", (request: Request, response: Response) => {
//     UserController.getAllUsers(request, response)
//         .then(() => console.log("Users fetched"))
//         .catch(err => response.status(500).json({ msg: "Error", details: err }));
// });

// The use of async/await in userRouter.ts ensures that:

// The API waits for the getAllUsers function to complete before sending a response.
// The code is cleaner and easier to maintain.
// Errors are handled efficiently inside the getAllUsers function.