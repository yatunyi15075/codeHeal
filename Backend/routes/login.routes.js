import { ControlUserCredentials } from "../controllers/login.controller.js";
import express from "express";

export const router = express.Router();

//http://localhost:${port}/login/
router.post('/', ControlUserCredentials, (req, res) => {
  try {
    res.json({ message: 'Login successful', user: req.FullName });
  } 
  catch (err) {
    throw err
  }
});

