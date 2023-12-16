import { VaridateUserCredentials } from "../services/login.services.js";
import { Loginquery } from "../models/query.models.js";
export const ControlUserCredentials = async (req, res) => {
    try{
        const {FullName,password} = req.body;

        const results = await VaridateUserCredentials(req, FullName, password, Loginquery);
        return res.json(results);
    }
    catch (err) {
        throw err;
    }
}