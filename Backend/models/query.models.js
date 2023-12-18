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
    FROM doctors
  `;

export const addDoctors = `
    INSERT INTO doctors(FULLNAME,CATEGORY,EMAIL,MOBILENUMBER,RATTINGS,PASSWORD,DATE,STATUS)
    VALUES(?,?,?,?,?,?,?,?);
`;
export const checkDoctors = `
    SELECT * 
    FROM doctors 
    WHERE EMAIL = ? 
    AND MOBILENUMBER = ?
`;

export const CheckAppointment = `
    SELECT *
    FROM Appointment
    WHERE PATIENTNAME = ? AND
    VISITDATE = ? AND
    TIME = ? AND
    DOCTOR = ?
`;

export const CheckAppointmentDoctor = `
    SELECT * 
    FROM Appointment
    WHERE DOCTOR = ? AND 
    VISITDATE = ? AND
    TIME = ?
`;

export const addAppointment = `
    INSERT INTO Appointment(PATIENTNAME,DOCTOR,VISITDATE,TIME,STATUS)
    VALUES(?, ?, ?, ?, ?)
`;

export const VerifyAppointment = `
  UPDATE Appointment
  SET STATUS = 'Verified'
  WHERE DOCTOR = ? AND
  PATIENTNAME = ? AND
  VISITDATE = ?
`;

export const FinishAppointment = `
  UPDATE Appointment
  SET STATUS = 'Finished' 
  WHERE DOCTOR = ? AND
  PATIENTNAME = ? AND
  VISITDATE = ?
`;

export const CancelAppointment = `
  DELETE FROM Appointment WHERE  
  DOCTOR = ? AND
  PATIENTNAME = ? AND
  VISITDATE = ?
`;