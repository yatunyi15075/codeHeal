import { OpenAI } from "openai";
import dotenv from 'dotenv';

dotenv.config();

if (!process.env.OPEN_AI_KEY) {
    throw new Error("The OPENAI_API_KEY environment variable is missing or empty");
}

const configuration = new OpenAI({
    apiKey: process.env.OPEN_AI_KEY,
});

export const openai = new OpenAI(configuration);

export const openaiMiddleware = async (req, res, next) => {
    try {
        const userMessage = req.body.message || "default";

        chat_completion = client.chat.completions.create(
            model = "gpt-3.5-turbo",
            messages = [{ "role": "user", "content": "Hello world" }]
        )

        const aiResponse = response.data.choices[0]?.text || "No response";

        req.openaiResponse = aiResponse;
        console.log('OpenAI API Response:', response);

        next();
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};
