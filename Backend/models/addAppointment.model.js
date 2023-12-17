import { db } from '../db.js';

export const addAppointmentModel = async (PatientName, Doctor, VisitDate, Time, Status, CheckAppointmentQuery, CheckAppointmentDoctorQuery, addAppointmentQuery) => {

    try {
        const [CheckAppointment] = await db.query(CheckAppointmentQuery, [PatientName, VisitDate, Time, Doctor])
        if (CheckAppointment.length <= 0) {
            const [CheckAppointmentDoctor] = await db.query(CheckAppointmentDoctorQuery, [Doctor, VisitDate, Time]);
            if (CheckAppointmentDoctor.length <= 0) {
                const [addAppointment] = await db.query(addAppointmentQuery, [PatientName, Doctor, VisitDate, Time, Status]);
                return addAppointment
            }
            else {
                return "Unable to add the Appointment";
            }
        }
        else {
            return "Doctor is allready booked at the specified period";
        }
    }
    catch (err) {
        throw err;
    }
}