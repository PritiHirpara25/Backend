import {Request , Response} from 'express';
import { IUser } from '../models/IUser';
import { UserUtil } from '../utils/UserUtil';

export const getAllUsers = async(request:Request , response:Response) => {
    try{
        let userData:IUser[] = await UserUtil.getAllUserfromDB();
        return response.json(userData);
    }
    catch(err){
        return response.json(err);
    }
};