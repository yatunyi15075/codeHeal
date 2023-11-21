import { getUserCredentials } from "../models/login.model.js";
import session from 'express-session';
import crypto from 'crypto';

const secretKey = crypto.randomBytes(16).toString('hex');

export const sessionMiddleware = session({
  secret: secretKey,
  resave: false,
  saveUninitialized: true,
});
export const VaridateUserCredentials = async (req, FullName, Password) => {
    try{
        const results = await getUserCredentials(FullName, Password);
        if(results && results.length > 0){
            req.session.user = {
                FullName: FullName,
            };
            return {Login : true, FullName: FullName}
        }
        else{
            return {Login : false}
        }
    }
    catch (err){
        throw err;
    }
}