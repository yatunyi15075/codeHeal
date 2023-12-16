import {db} from '../db.js';

export const registerUser = async (FullName, MobileNumber, Email, Password, date, InsertQuery, SelectQuery) => {

    try {
        const [CheckUserExistence] =  await db.query(SelectQuery,[Email,MobileNumber])
        if(CheckUserExistence.length <= 0){
            const [result] = await db.query(InsertQuery,[FullName,MobileNumber,Email,Password,date ]);
            return result
        }
    }
    catch (err) {
        throw err;
    }
}