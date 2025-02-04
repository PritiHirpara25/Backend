import { Application } from "express";
import express , {Request , Response } from "express";
import mongoose from "mongoose";
import dotenv from 'dotenv';
dotenv.config({ path : "./.env"})

const hostName:string = '127.0.0.1';
const port:number | string | undefined = process.env.PORT || 9999;

const app:Application = express();

const db_url:any = process.env.MONGO_DB_CLOUD_URL;
const dbName:string | undefined = process.env.MONGO_DB_DATABASE;

mongoose.connect(db_url,{dbName:dbName})
.then(() => {
    console.log("Database connected");
})
.catch(() => {
    console.log("Database not Connected");
});

app.get("/" , (request:Request , response:Response) => {
    response.json({msg:"Hello"});
});

app.listen(Number(port) , hostName , () => {
    console.log(`http://${hostName}:${port}`);
});


