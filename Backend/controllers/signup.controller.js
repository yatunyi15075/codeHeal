import { RegisterUserService } from "../services/signup.services.js";
import bcrypt from 'bcrypt';
import {body, validationResult } from 'express-validator';

const saltRounds = 10;
export const ControlUserRegistration = async (req,res) => {
    try{
        const {FullName, MobileNumber, Email, Password} = req.body;
        const date = new Date();
        bcrypt.hash(Password, saltRounds, async (err, hashedPassword) => {
            if(err){
                return res.json("error in hashing the password");
            }
            else{
                if(body('FullName').isAlphanumeric().isLength({ min: 3, max: 30 }).trim() && body('Email').isEmail().normalizeEmail() && body('phoneNumber').isNumeric()){
                    const results = await RegisterUserService(FullName,MobileNumber ,Email,hashedPassword, date);
                    return res.json(results);
                }
            }
        });
    }
    catch (err) {
        throw err;
    }
}