import { addAppointmentController } from "../controllers/addAppointment.controllers.js";
import express from 'express';

export const router = express.Router();

//http://localhost:${port}/addAppointment/
router.post('/', addAppointmentController, (req, res) => {
    try {
        res.json({ message: 'Appointment added successfull' });
    }
    catch (err) {
        throw err;
    }
});