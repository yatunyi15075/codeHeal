import { db } from '../db.js';

export const AmbulanceModel = async (FullName, Location, status, InsertQuery, SelectQuery) => {

    try {
        const [CheckAmbulance] = await db.query(SelectQuery, [FullName, Location, status]);
        if (CheckAmbulance.length <= 0) {
            const [result] = await db.query(InsertQuery, [FullName, Location, status]);
            return result
        }
    }
    catch (err) {
        throw err;
    }
}