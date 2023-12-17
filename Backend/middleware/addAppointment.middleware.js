import { router } from "../routes/addAppointment.routes.js";
import express from 'express';

export const Appointment = express.Router();

Appointment.use('/addAppointment', router);