import { ControlUserRegistration } from "../controllers/signup.controller.js";
import express from 'express';

export const router = express.Router();

//http://localhost:${port}/signup/
router.post('/', ControlUserRegistration, (req,res) => {
    try{
        res.json({message: 'Registration was successfull'});
    }
    catch (err){
        throw err;
    }
});