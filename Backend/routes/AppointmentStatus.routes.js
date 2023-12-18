import { AppointmentStatusController } from "../controllers/AppointmentStatus.controller.js";
import express from 'express';

export const routerv = express.Router();
export const routerf = express.Router();
export const routerc = express.Router();

//http://localhost:${port}/verifyAppointment/
routerv.post('/', AppointmentStatusController, (req, res) => {
    try {
        res.json({ message: 'Appointment Verified' });
    }
    catch (err) {
        throw err;
    }
});

//http://localhost:${port}/finishAppointment/
routerf.post('/', AppointmentStatusController, (req, res) => {
    try {
        res.json({ message: 'Appointment Finished' });
    }
    catch (err) {
        throw err;
    }
});

//http://localhost:${port}/CancelAppointment/
routerc.post('/', AppointmentStatusController, (req, res) => {
    try {
        res.json({ message: 'Appointment Cancelled' });
    }
    catch (err) {
        throw err;
    }
});