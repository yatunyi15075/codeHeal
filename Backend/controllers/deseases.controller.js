import { openaiMiddleware } from '../services/deseases.servives.js';
import express from 'express';

export const router = express.Router();

// http://localhost:${port}/openai/
router.post('/', openaiMiddleware, (req, res) => {
    try {
        const userMessage = req.body.message || "default";
        const aiResponse = req.openaiResponse || "No response";

        // Respond with a JSON message including OpenAI response
        res.json({ userMessage, aiResponse });
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

export default router;
