import { DoctorsModel } from "../models/doctors.model.js";

export const DoctorsServices = async (query) => {
    try {
        const results = await DoctorsModel(query);
        if (results && results.length > 0) {
            return { results }
        }
        else {
            return { Doctors: false }
        }
    }
    catch (err) {
        throw err;
    }
}