import express , {Application , Request , Response} from 'express';

const hostName:string = "127.0.0.1";
const port:number = 9999;

const app:Application = express();

app.get("/" , (request:Request , response:Response) => {
    response.status(200);
    response.json({
        msg : "Welcome to Expresss Server"
    });
});

app.listen(port , hostName , () => {
    console.log(`Express Server is started at http://${hostName}:${port}`);
});