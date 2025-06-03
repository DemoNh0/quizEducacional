const express = require('express');
const path = require('path');


const usuarioController = require('./controllers/usuarioController');
const questaoController = require('./controllers/questaoController');
const alternativaController = require('./controllers/alternativaController');

const app = express();

const PORT = 3000;

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.json());

// Rotas Usuario
app.post('/api/usuario', usuarioController.cadastrarUsuario);

// ROTAS PARA questaoController
app.get('/api/questao/:id_disciplina', questaoController.consultarQuestao);
app.post('/api/questao', questaoController.cadastrarQuestao);
app.put('/api/questao', questaoController.editarQuestao);
app.delete('/api/questao/:id', questaoController.excluirQuestao);

// ROTAS PARA alternativaController
app.get('/api/alternativa/:id_questao', alternativaController.consultarAlternativa);
app.post('/api/alternativa', alternativaController.cadastrarAlternativa);
app.put('/api/alternativa', alternativaController.editarAlternativa);
app.delete('/api/alternativa/:id', alternativaController.excluirAlternativa);



// Inicialização Servidor
app.listen(PORT, ()=>{
    console.log(`Servidor rodando na porta ${PORT}`);
});