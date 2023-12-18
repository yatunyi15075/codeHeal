import { AppointmentStatusModelService } from "../services/AppointmentStatus.services.js";
import { VerifyAppointment, FinishAppointment, CancelAppointment } from "../models/query.models.js";

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
        if (req.baseUrl.includes("/CancelAppointment")) {
            queryToExecute = CancelAppointment;
        }

        const results = await AppointmentStatusModelService(Doctor, PatientName, VisitDate, queryToExecute);
        return res.json(results);

    }
    catch (err) {
        throw err;
    }
}