import { router } from "../routes/populerDoctors.routes.js";
import express from 'express';

export const populerDoctors = express.Router();

populerDoctors.use('/populerDoctors', router);