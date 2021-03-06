const database = require('../models');
const moment = require('moment');

  
  

function verifyAge(age) {    
   
    const dateDiff = moment().diff(age,'days');  
   
    return parseFloat(dateDiff);
}

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
        const newCliente =  req.body             

        try {
            
            if (verifyAge(newCliente.DataDeNascimento) < 6574.5) {
             
            return res.status(400).json({error: `Usuário precisa ter mais de 18 anos para ser cadastrado`})
                
            }
            
            const createcliente = await database.Cliente.create(newCliente);
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
            return res.status(400).send({error: `status code 400.`})
        }
    }

}   

module.exports = clienteController;