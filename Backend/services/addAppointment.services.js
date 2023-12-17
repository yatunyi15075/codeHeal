import { addAppointmentModel } from "../models/addAppointment.model.js";

export const addAppointmentServices = async (PatientName, Doctor, VisitDate, Time, Status, CheckAppointmentQuery, CheckAppointmentDoctorQuery, addAppointmentQuery) => {
    try {
        const results = await addAppointmentModel(PatientName, Doctor, VisitDate, Time, Status, CheckAppointmentQuery, CheckAppointmentDoctorQuery, addAppointmentQuery);
        if (results) {
            return { Appointment: true }
        }
        else {
            return { Appointment: false }
        }
    }
    catch (err) {
        throw err;
    }
}