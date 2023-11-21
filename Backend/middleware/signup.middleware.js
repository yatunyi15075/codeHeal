import { router } from "../routes/signup.routes.js";
import express from 'express';

export const RegRouter = express.Router();

RegRouter.use('/signup',router);