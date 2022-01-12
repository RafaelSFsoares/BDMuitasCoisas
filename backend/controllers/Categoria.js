const database = require('../models');


class categoriaController {
    static async index(req, res) {
        try {
         const categoria = await database.Categoria.findAll()
         return res.status(200).json(categoria);
            
        } catch (error) {
            return res.status(500).json(error.message);
        }
     

        
    }


    static async save (req, res) {
        const newcategoria =  req.body
        try {
            const createcategoria = await database.Categoria.create(newcategoria);
            return res.status(200).json(createcategoria);

        } catch (error) {
          return res.status(500).json(error.message);

        }
    } 

    static async update(req, res){
        const {id} = req.params
        const newInfo = req.body
        try{
            await database.Categoria.update(newInfo, { 
                where: {
                id: Number(id)
            }     
            })
            const updateCategoria = await database.Categoria.findOne({
                where: {
                    id:Number(id)
                }
            })
            return res.status(200).json(updateCategoria)

        }catch(error){
            return res.status(500).json(error.message)
        }
    }

}   

module.exports = categoriaController;