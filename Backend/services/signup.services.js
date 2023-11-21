import { registerUser } from "../models/signup.model.js";

export const RegisterUserService = async  (FullName,MobileNumber,Email,Password, date) => {
    try{
        const results = await registerUser(FullName,MobileNumber,Email,Password, date);
        if(results){
            return {Signup: true}
        }
        else{
            return {Signup: false}
        }
    }
    catch (err) {
        throw err;
    }
}