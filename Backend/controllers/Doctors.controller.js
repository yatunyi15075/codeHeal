import { DoctorsServices } from "../services/Doctors.services.js";
import { populerDoctorsQuery, allDoctorsQuery } from "../models/query.models.js";

export const DoctorsController = async (req, res) => {
    try {

        let queryToExecute;
        console.log("Request Object:", req.baseUrl);

        if (req.baseUrl.includes("/populerDoctors")) {
            queryToExecute = populerDoctorsQuery;
        }
        if (req.baseUrl.includes("/allDoctors")) {
            queryToExecute = allDoctorsQuery;
        }

        const results = await DoctorsServices(queryToExecute);
        return res.json(results);

    }
    catch (err) {
        throw err;
    }
}