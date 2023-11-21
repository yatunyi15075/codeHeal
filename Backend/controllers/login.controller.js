import { VaridateUserCredentials } from "../services/login.services.js";

export const ControlUserCredentials = async (req, res) => {
    try{
        const {FullName,password} = req.body;

        const results = await VaridateUserCredentials(req,FullName, password);
        return res.json(results);
    }
    catch (err) {
        throw err;
    }
}