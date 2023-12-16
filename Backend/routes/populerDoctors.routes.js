import { DoctorsController } from "../controllers/Doctors.controller.js";
import express from "express";

export const router = express.Router();

//http://localhost:${port}/populerDoctors/
router.get('/', DoctorsController, (req, res) => {
    try {
        res.json({ message: 'Doctors List' });
    }
    catch (err) {
        throw err
    }
});

