import { routerv, routerf, routerc } from "../routes/AppointmentStatus.routes.js";
import express from 'express';

export const VerifyAppointment = express.Router();
export const FinishAppointment = express.Router();
export const CancelAppointment = express.Router();

VerifyAppointment.use('/VerifyAppointment', routerv);
FinishAppointment.use('/FinishAppointment', routerf);
CancelAppointment.use('/CancelAppointment', routerc);