import path from "path";
import { IUser } from "../models/IUser";

const jsonfile = require("jsonfile");

export class UserUtil {
    private static usersPathJson = path.join(__dirname, "..", "db", "users.json")

    public static getAllUserfromDB(): Promise<IUser[]>{
    return new Promise((reject, resolve) => {
        jsonfile.readFile(this.usersPathJson, (err: any, data: any) => {
            if(err) {
                reject(err);
            }
            else{
                resolve(data);
            }
        }); 
    });
}
}

