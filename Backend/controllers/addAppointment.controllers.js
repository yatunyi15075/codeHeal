import { addAppointmentServices } from "../services/addAppointment.services.js";
import { body } from 'express-validator';
import { CheckAppointment, CheckAppointmentDoctor, addAppointment } from "../models/query.models.js";
export const addAppointmentController = async (req, res) => {
    try {
        const { PatientName, Doctor, VisitDate, Time } = req.body;
        const Status = 'Pedding';
        if (body('PatientName').isAlphanumeric().isLength({ min: 3, max: 30 }).trim() && body('Doctor').isAlphanumeric().isLength({ min: 3, max: 30 }).trim()) {
            const results = await addAppointmentServices(PatientName, Doctor, VisitDate, Time, Status, CheckAppointment, CheckAppointmentDoctor, addAppointment);
            return res.json(results);
        }
    }
    catch (err) {
        throw err;
    }
}