import { router } from "../routes/ambulance.routes.js";
import express from 'express';

export const Ambulance = express.Router();

Ambulance.use('/ambulance', router);