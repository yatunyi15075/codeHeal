/* CODEHEAL DATABASE QUERIES*/
export const Loginquery = `
    SELECT * 
    FROM users 
    WHERE FullName = ? 
  `;

export const populerDoctorsQuery = `
    SELECT * 
    FROM doctors
    ORDER BY RATTINGS DESC
    LIMIT 2;
  `;

export const SignUpInsertQuery = `
    INSERT INTO users(FullName,MobileNumber,Email,Password,date)
    VALUES(?,?,?,?,?);
    `;

export const SignUpSelectQuery = `
    SELECT * 
    FROM users WHERE
    Email = ? OR 
    MobileNumber = ?
    `;

export const allDoctorsQuery = `
    SELECT * 
    FROM doctors;
  `;

export const addDoctors = `
    INSERT INTO doctors(FULLNAME,CATEGORY,EMAIL,MOBILENUMBER,RATTINGS,PASSWORD,DATE,STATUS)
    VALUES(?,?,?,?,?,?,?,?);
`
export const checkDoctors = `
    SELECT * 
    FROM doctors 
    WHERE EMAIL = ? 
    AND MOBILENUMBER = ?
`;