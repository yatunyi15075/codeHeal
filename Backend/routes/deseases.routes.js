import { router } from '../controllers/deseases.controller.js';
import express from 'express';

export const appRouter = express.Router();

appRouter.use('/', router);
