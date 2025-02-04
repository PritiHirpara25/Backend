import { Request , Response } from "express";

import { IUser } from "../models/IUser";
// import { UserUtil } from "../util/UserUtil";
import getAllUsersFromDB from '../util/UserUtil';

export const getAllUsers = async(request:Request , response:Response) => {
    try{
        let userData:IUser[] = await getAllUsersFromDB()
        return response.status(200).json(userData)
    }catch{
        return response.status(500).json({msg:"Error"})
    }
}   