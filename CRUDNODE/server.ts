import dotenv from 'dotenv';
import  express , {Application , Response , Request } from 'express';
import * as groupController from './controller/groupController'
import mongoose from 'mongoose';

dotenv.config({path:"./.env"}) // here path is optional

const port:number | string = process.env.PORT || 9999; // 

const db_url:any = process.env.DATABASE_URL;
const db_name:any = process.env.DATABASE_NAME;

const app:Application = express();

app.use(express.json());

app.get('/' , (request:Request , response:Response) => {
    response.json({msg:"Hello ji"});
});

// router 

// create
app.post('/user' , async (request:Request  , response:Response) => {
    await groupController.createUser(request , response);
})

// read

app.get('/getUser',async(request:Request,response:Response)=>{
    await groupController.readUser(request,response);
})

const connectDB = async()=>{
    try{
        await mongoose.connect(db_url);
        console.log("db connected")
    }
    catch(err){
        console.log("something went wrong");
    };
}

 connectDB();


app.listen(port , () => {
    console.log(`express server run on http://localhost:${port}`)
})


