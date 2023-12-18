import express from 'express';
import { appRouter } from '../routes/deseases.routes.js';

export const openAIApi = express.Router();

openAIApi.use('/openai', appRouter);
