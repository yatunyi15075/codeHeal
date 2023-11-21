import { router } from "../routes/login.routes.js";
import express from 'express';

export const AuthRouter = express.Router();

AuthRouter.use('/login',router);