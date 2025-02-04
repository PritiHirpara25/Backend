import express , {Application , Request , Response} from 'express';
import userRouter from './Router/UserRouter';

const hostName:string="127.0.0.1";
const port:number = 8888;

const app:Application = express();

app.get('/',(request:Request , response:Response) => {
    response.status(200)
    response.json({msg:"HEllo"})
})

app.use('/api',userRouter)

app.listen(port , hostName , () => {
    console.log(`http://${hostName}:${port}`)
})
