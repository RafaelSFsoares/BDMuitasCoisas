const database = require('../models');


class estoqueController {
    static async index(req, res) {
        try {
         const estoque = await database.Estoque.findAll()
         return res.status(200).json(estoque);
            
        } catch (error) {
            return res.status(500).json(error.message);
        }
     

        
    } 

    static async show (req, res) {
        const {id} = req.params
        try {
            const idEstoque = await database.Estoque.findOne( { where:
                 { id: Number(id) }
                })
            return res.status(200).json(idEstoque);
        } catch (error) {
            return res.status(500).json(error.message);
        }
    }


    static async save (req, res) {
        const newEstoque =  req.body
        try {
            const createEstoque = await database.Estoque.create(newEstoque);
            return res.status(200).json(createEstoque);

        } catch (error) {
          return res.status(500).json(error.message);

        }
    } 

    static async update(req, res){
        const {id} = req.params
        const newInfo = req.body
        try{
            await database.Estoque.update(newInfo, { 
                where: {
                id: Number(id)
            }     
            })
            const updateEstoque = await database.Estoque.findOne({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json(updateEstoque)

        }catch(error){
            
            return res.status(400).send({error: `status code 400.`})
        }
    }

}   

module.exports = estoqueController;