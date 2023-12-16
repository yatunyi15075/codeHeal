import { router } from "../routes/addDoctors.routes.js";
import express from 'express';

export const addDoctor = express.Router();

addDoctor.use('/addDoctors', router);