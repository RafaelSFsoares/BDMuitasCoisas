const database = require('../models');


class vendaController {
    static async index(req, res) {
        try {
         const venda = await database.Venda.findAll()
         return res.status(200).json(venda);
            
        } catch (error) {
            return res.status(500).json(error.message);
        }
     

        
    }


    static async save (req, res) {
        const newvenda =  req.body
        try {
            const createvenda = await database.Venda.create(newvenda);
            return res.status(200).json(createvenda);

        } catch (error) {
            return res.status(400).send({error: `status code 400.`})

        }
    } 

    static async update(req, res){
        const {id} = req.params
        const newInfo = req.body
        try{
            await database.Venda.update(newInfo, { 
                where: {
                id: Number(id)
            }     
            })
            const updateVenda = await database.Venda.findOne({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json(updateVenda)

        }catch(error){
            return res.status(400).send({error: `status code 400.`})
        }
    }

}   

module.exports = vendaController;