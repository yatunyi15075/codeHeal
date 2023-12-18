import { AmbulanceController } from "../controllers/ambulance.controller.js";
import express from 'express';

export const router = express.Router();

//http://localhost:${port}/ambulance/
router.post('/', AmbulanceController, (req, res) => {
    try {
        res.json({ message: 'Ambulance requested successfully' });
    }
    catch (err) {
        throw err;
    }
});