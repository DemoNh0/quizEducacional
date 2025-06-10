const db = require('../config/db.js')

const cursoModel = {
    novoRegistro: async (nome, descricao) => {
        try {
            const sql = 'CALL inserir_curso(?, ?)';
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
            
            return true;

        } catch (error) {
            console.error('Erro ao editar curso ', error);
            throw error;
        }
    },

    excluirRegistro: async (id) => {
        try {
            const sql = 'CALL excluir_curso_por_id(?)'

            await db.query(sql, [id]);

            return true;

        } catch (error) {
            throw error;
        }
    },

    consultarTodosRegistros: async () => {
        // Método que retorna todos os cursos através da 'procedure'
        try {
            const sql = 'CALL consultar_cursos()';  // Aqui você chama a procedure que retorna todos os cursos
            const [result] = await db.execute(sql);  // Execute a consulta

            return result;  // Retorna todos os cursos como um array
        } catch (error) {
            console.error('Erro ao buscar cursos: ', error);
            throw error;  // Propaga o erro
        }
    }
};

module.exports = cursoModel;
