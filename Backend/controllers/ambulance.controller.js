import { AmbulanceServices } from "../services/ambulance.services.js";
import { body } from 'express-validator';
import { checkAmbulance, RequestAmbulance } from "../models/query.models.js";
export const AmbulanceController = async (req, res) => {
    try {
        const { FullName, Location } = req.body;
        const status = 'PEDDING';
        if (body('FullName').isAlphanumeric().isLength({ min: 3, max: 30 }).trim()) {
            const results = await AmbulanceServices(FullName, Location, status, RequestAmbulance, checkAmbulance);
            return res.json(results);
        }
    }
    catch (err) {
        throw err;
    }
}