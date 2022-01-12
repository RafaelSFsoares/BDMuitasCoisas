const database = require('../models');


class produtoController {
    static async index(req, res) {
        try {
         const produto = await database.Produto.findAll()
         return res.status(200).json(produto);
            
        } catch (error) {
            return res.status(500).json(error.message);
        }
     

        
    } 

    static async show (req, res) {
        const {id} = req.params
        try {
            const idProduto = await database.Produto.findOne( { where:
                 { id: Number(id) }
                })
            return res.status(200).json(idProduto);
        } catch (error) {
            return res.status(500).json(error.message);
        }
    }


    static async save (req, res) {
        const newProduto =  req.body
        try {
            const createProduto = await database.Produto.create(newProduto);
            return res.status(200).json(createProduto);

        } catch (error) {
          return res.status(500).json(error.message);

        }
    } 

    static async update(req, res){
        const {id} = req.params
        const newInfo = req.body
        try{
            await database.Produto.update(newInfo, { 
                where: {
                id: Number(id)
            }     
            })
            const updateProduto = await database.Produto.findOne({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json(updateProduto)

        }catch(error){
            return res.status(500).json(error.message)
        }
    }

    static async remove(req, res){
        const {id} = req.params
        try{
            await database.Produto.destroy({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json({mensagem: `id ${id} deletado`})

        }catch(error){
            return res.status(500).json(error.message)
        }
    }
}

module.exports = produtoController;