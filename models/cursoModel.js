const db = require('../config/db.js')

const cursoModel = {
    novoRegistro: async (nome, descricao) => {
        try {
            const sql = 'CALL inserir_curso (?, ?)';
            await db.query(sql, [nome, descricao]);

            return true;
        } catch (error) {
            console.error('Erro ao registrar novo curso', error);
            throw error;
        }
    },

    edicaoRegistro: async (id, nome, descricao) => {
        try {

            const sql = 'CALL editar_curso_por_id(?, ?, ?)';

            await db.query(sql, [id, nome, descricao]);
            
            return true

        } catch (error) {
            console.error('Erro ao editar curso ', error)
            throw error;
        }
    },

    excluirRegistro: async (id) => {
        try {

            const sql = 'CALL excluir_curso_por_id(?)'

            await db.query(sql, [id]);

        } catch (error) {
            throw error
        }

    },

    consultaRegistro: async (req, res) => {
        //Método que verifica o email informado através da 'procedure'
        try {
            const sql = 'CALL consultar_cursos()';

            await db.execute(sql);
    
            return result[0];

        } catch (error) {
        Console.error('Erro ao buscar cursos: ', error);
        return error;
        }
    }

};

module.exports = cursoModel;