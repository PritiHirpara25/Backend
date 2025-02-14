import UserTable from '../Database/UserSchema'
import { Request , Response } from 'express'

// create method

export const createUser = async (request:Request , response:Response) => {
    const userBody = request.body;
    console.log("userBody" , userBody);
    try{
        // const user = new UserTable({
        //     username:"princy",
        //     email:'p',
        //     password:"1234",
        //     imageUrl:"Image",
        //     isAdmin:true
        // });
        const user:any = new UserTable(userBody);
        const userData = await user.save();
        if(userData){
            return response.json({data : userData});
        }
        else{
            return response.status(400).send("Not Found");
        }
    }
    catch(err){
        response.status(400).send("Somthing Went Wrong");
    }
}

// read method

export const readUser = async(request:Request,response:Response)=>{
    try{
        console.log("hello ji")
      const userData = await UserTable.find();
   if(userData.length === 0){
    return response.json({msg:"userData not found"})
   }else{
    return response.json({
        data:userData
      })
   }
    }catch(err){
      return  response.status(400).json({
            msg:"something went wrong"
        })
    }
}
