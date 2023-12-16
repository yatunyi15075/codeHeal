import { router } from "../routes/allDoctors.routes.js";
import express from 'express';

export const allDoctors = express.Router();

allDoctors.use('/allDoctors', router);