const produto = require('./produtoRoutes');
const estoque = require('./estoqueRoutes');
const categoria = require('./categoriaRoutes');
const cliente = require('./clienteRoutes');
const venda = require('./vendaRoutes');
const express = require('express');


module.exports = app => {
    
    app.use(express.json());
    
    app.use((req, res, next) => {
        console.log(req.headers.host, new Date().toLocaleTimeString());
        next();
    });

    app.use(produto);
    app.use(estoque);
    app.use(categoria);
    app.use(cliente);  
    app.use(venda);
    
    
}