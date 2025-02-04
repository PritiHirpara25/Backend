import { UserUtil } from "../util/UserUtil.js";

export const getAllUsers = async(request , response) => {
    try{
        let userData = await UserUtil.getAllUsersFromDB()
        return response.status(200).json(userData)
    }catch{
        return response.status(500).json({msg:"Error"})
    }
}