import { AmbulanceModel } from "../models/ambulance.model.js";

export const AmbulanceServices = async (FullName, Location, status, InsertQuery, SelectQuery) => {
    try {
        const results = await AmbulanceModel(FullName, Location, status, InsertQuery, SelectQuery);
        if (results) {
            return { Ambulance: true }
        }
        else {
            return { Ambulance: false }
        }
    }
    catch (err) {
        throw err;
    }
}