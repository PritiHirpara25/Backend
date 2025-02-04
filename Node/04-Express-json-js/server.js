import express from 'express';
import userRouter from './Routes/userRouter.js';

const hostName = "127.0.0.1";
const port = 9999;

const app = express();

app.get("/" , (request , response) => {
    response.status(200);
    response.json({
        msg : "Welcome to Expresss Server"
    });
});

//router Configuration
app.use("/api" , userRouter)

app.listen(port , hostName , () => {
    console.log(`Express Server is started at http://${hostName}:${port}`);
});
