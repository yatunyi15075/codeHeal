import { addDoctorsServices } from "../services/addDoctors.services.js";
import bcrypt from 'bcrypt';
import { body } from 'express-validator';
import { addDoctors, checkDoctors } from "../models/query.models.js";
const saltRounds = 10;
export const addDoctorsController = async (req, res) => {
    try {
        const { FullName, Category, Email, MobileNumber, Rattings, Password, status } = req.body;
        const date = new Date();
        bcrypt.hash(Password, saltRounds, async (err, hashedPassword) => {
            if (err) {
                return res.json("error in hashing the password");
            }
            else {
                if (body('FullName').isAlphanumeric().isLength({ min: 3, max: 30 }).trim() && body('Email').isEmail().normalizeEmail() && body('phoneNumber').isNumeric()) {
                    const results = await addDoctorsServices(FullName, Category, Email, MobileNumber, Rattings, hashedPassword, date, status, addDoctors, checkDoctors);
                    return res.json(results);
                }
            }
        });
    }
    catch (err) {
        throw err;
    }
}