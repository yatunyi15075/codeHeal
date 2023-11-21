import {db} from '../db.js';
import bcrypt from 'bcrypt'

export const getUserCredentials = async (FullName, Password) => {
  const query = `
    SELECT * 
    FROM users 
    WHERE FullName = ? 
  `;

  try {
    const [result] = await db.query(query, [FullName])
     if(await bcrypt.compare(Password, result[0].password)){
      return result;
    } 

  } 
  catch (err) {
    throw err;
  }
};
