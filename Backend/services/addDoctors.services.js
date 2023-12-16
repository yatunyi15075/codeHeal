import { addDoctorsModel } from "../models/addDoctors.model.js";

export const addDoctorsServices = async (FullName, Category, Email, MobileNumber, Rattings, password, date, status, InsertQuery, SelectQuery) => {
    try {
        const results = await addDoctorsModel(FullName, Category, Email, MobileNumber, Rattings, password, date, status, InsertQuery, SelectQuery);
        if (results) {
            return { DoctorAdded: true }
        }
        else {
            return { DoctorAdded: false }
        }
    }
    catch (err) {
        throw err;
    }
}