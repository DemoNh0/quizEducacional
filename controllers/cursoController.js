const cursoModel = require('../models/cursoModel.js');

const cursoController = {

    novoRegistro: async (req, res) => {
        const { nome, descricao } = req.body;

        try {
            if (!nome || !descricao) {
                return res.status(400).json({
                    error: 'Nome e descrição são obrigatórios.'
                });
            }

            const registro = await cursoModel.novoRegistro(nome, descricao);

            if (registro) {
                return res.status(200).json({
                    message: 'Curso registrado com sucesso!',
                    data: registro
                });
            } else {
                return res.status(500).json({
                    error: 'Erro ao registrar o curso.'
                });
            }
        } catch (error) {
            console.error('Erro ao registrar novo curso: ', error);
            return res.status(500).json({
                error: 'Erro interno ao registrar curso.'
            });
        }
    },

    edicaoRegistro: async (req, res) => {
        const { id, nome, descricao } = req.params;

        try {
            if (!id || !nome || !descricao) {
                return res.status(400).json({
                    error: 'ID, nome e descrição são obrigatórios.'
                });
            }

            const edit = await cursoModel.edicaoRegistro(id, nome, descricao);
            if (edit) {
                return res.status(200).json({
                    message: 'Edição realizada com sucesso!',
                    data: edit
                });
            } else {
                return res.status(500).json({
                    error: 'Erro ao realizar edição, tente novamente.'
                });
            }
        } catch (error) {
            console.error('Erro ao editar registro: ', error);
            return res.status(500).json({
                error: 'Erro interno ao editar curso.'
            });
        }
    },

    excluirRegistro: async (req, res) => {
        const { id } = req.params;

        try {
            if (!id) {
                return res.status(400).json({
                    error: 'ID é obrigatório.'
                });
            }

            const esc = await cursoModel.excluirRegistro(id);
            if (esc) {
                return res.status(200).json({
                    message: 'Exclusão feita com sucesso!'
                });
            } else {
                return res.status(404).json({
                    error: 'Curso não encontrado ou não excluído.'
                });
            }
        } catch (error) {
            console.error('Erro ao excluir curso: ', error);
            return res.status(500).json({
                error: 'Erro interno ao excluir curso.'
            });
        }
    },

    consultaRegistro: async (req, res) => {
        try {
            const registros = await cursoModel.consultarTodosRegistros();
            
        } catch (error) {
            console.error('Erro ao consultar registros: ', error);
            return res.status(500).json({
                error: 'Erro interno ao consultar cursos.'
            });
        }
    }
};

module.exports = cursoController;