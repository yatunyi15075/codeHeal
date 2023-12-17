import { db } from '../db.js';

export const AppointmentStatusModel = async (Doctor, PatientName, VisitDate, AppointmentQuery) => {

    try {
        const [result] = await db.query(AppointmentQuery, [Doctor, PatientName, VisitDate])
        return result
    }
    catch (err) {
        throw err;
    }
}