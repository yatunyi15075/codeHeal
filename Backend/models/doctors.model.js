import { db } from '../db.js';
export const DoctorsModel = async (query) => {

    try {
        const [result] = await db.query(query);
        return result;

    }
    catch (err) {
        throw err;
    }
};
