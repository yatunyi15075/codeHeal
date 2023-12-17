import { AppointmentStatusModel } from "../models/AppointmentStatus.model.js";

export const AppointmentStatusModelService = async (Doctor, PatientName, VisitDate, AppointmentQuery) => {
    try {
        const results = await AppointmentStatusModel(Doctor, PatientName, VisitDate, AppointmentQuery);
        if (results) {
            return { AppointmentStatus: true }
        }
        else {
            return { AppointmentStatus: false }
        }
    }
    catch (err) {
        throw err;
    }
}