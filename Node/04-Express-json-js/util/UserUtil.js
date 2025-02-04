import path from 'path';
import jsonfile from 'jsonfile';
// const jsonfile = require('jsonfile')

export class UserUtil{
    
    // static usersJsonPath = path.join(__dirname , "..","db","users.json")
    static usersJsonPath = "D:/PRITI-FULLSTACK/BACKEND/Node/04-Express-json-js/db/users.json";

    static getAllUsersFromDB(){
        return new Promise((resolve , reject) => {
            jsonfile.readFile(this.usersJsonPath,(err , data) => {
                if(err){
                    reject(err);
                }
                else{
                    resolve(data);
                }
            })
        })
    }
}
