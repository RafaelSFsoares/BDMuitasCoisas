const database = require('../models');
const moment = require('moment');

class clienteController {
    static async index(req, res) {
        try {
         const cliente = await database.Cliente.findAll()
         return res.status(200).json(cliente);
            
        } catch (error) {
            return res.status(500).json(error.message);
        }
     

        
    }



    static async save (req, res) {
        const newcliente =  req.body
        

        try {
            
            const createcliente = await database.Cliente.create(newcliente);
            return res.status(200).json(createcliente);

        } catch (error) {
          return res.status(500).json(error.message);

        }
    } 

    static async update(req, res){
        const {id} = req.params
        const newInfo = req.body
        try{
            await database.Cliente.update(newInfo, { 
                where: {
                id: Number(id)
            }     
            })
            const updateCliente = await database.Cliente.findOne({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json(updateCliente)

        }catch(error){
            return res.status(500).json(error.message)
        }
    }

}   

module.exports = clienteController;