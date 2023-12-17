import { AppointmentStatusModelService } from "../services/AppointmentStatus.services.js";
import { VerifyAppointment, FinishAppointment } from "../models/query.models.js";

export const AppointmentStatusController = async (req, res) => {
    try {
        const { Doctor, PatientName, VisitDate } = req.body;
        let queryToExecute;

        if (req.baseUrl.includes("/verifyAppointment")) {
            queryToExecute = VerifyAppointment;
        }
        if (req.baseUrl.includes("/finishAppointment")) {
            queryToExecute = FinishAppointment;
        }

        const results = await AppointmentStatusModelService(Doctor, PatientName, VisitDate, queryToExecute);
        return res.json(results);

    }
    catch (err) {
        throw err;
    }
}