import { addDoctorsController } from "../controllers/addDoctors.controller.js";
import express from 'express';

export const router = express.Router();

//http://localhost:${port}/addDoctors/
router.post('/', addDoctorsController, (req, res) => {
    try {
        res.json({ message: 'Registration was successfull' });
    }
    catch (err) {
        throw err;
    }
});