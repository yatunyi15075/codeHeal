import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import { db } from "./db.js";
import bodyParser from 'body-parser';
import { ErrorHandler } from './erroTracker/login.error.js';
import { sessionMiddleware } from './services/login.services.js';

import { AuthRouter } from './middleware/login.middleware.js';
import { RegRouter } from './middleware/signup.middleware.js';
import { populerDoctors } from './middleware/populerDoctors.middleware.js';
import { allDoctors } from './middleware/allDoctors.middleware.js';
import { addDoctor } from './middleware/addDoctors.middleware.js';
import { Appointment } from './middleware/addAppointment.middleware.js';
import { VerifyAppointment, FinishAppointment, CancelAppointment } from './middleware/AppointmentStatus.middleware.js';
import { Ambulance } from './middleware/ambulance.middleware.js';

dotenv.config();
const app = express();
app.use(sessionMiddleware);
app.use(bodyParser.json());
app.use(cors());


app.use(AuthRouter);
app.use(RegRouter);
app.use(populerDoctors);
app.use(allDoctors);
app.use(addDoctor);
app.use(Appointment);
app.use(VerifyAppointment);
app.use(FinishAppointment);
app.use(CancelAppointment);
app.use(Ambulance);


app.use(ErrorHandler);

const port = process.env.PORT_NUMBER
db.query(`
SELECT 1
`)
    .then(data => {
        app.listen(port, () => {
            console.log(`server listening at http://localhost:${port}`);
        })
    })
    .catch(err => console.log('db connection error\n' + err));

