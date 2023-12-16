import { db } from '../db.js';

export const addDoctorsModel = async (FullName, Category, Email, MobileNumber, Rattings, password, date, status, InsertQuery, SelectQuery) => {

    try {
        const [CheckUserExistence] = await db.query(SelectQuery, [Email, MobileNumber]);
        if (CheckUserExistence.length <= 0) {
            const [result] = await db.query(InsertQuery, [FullName, Category, Email, MobileNumber, Rattings, password, date, status]);
            return result
        }
    }
    catch (err) {
        throw err;
    }
}