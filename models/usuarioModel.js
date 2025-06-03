const db = require('../config/db.js') // Inserir diretorio da conexão com o banco de dados

const usuarioModel =  {


    cadastrarUsuario: async (nome, email, senha) => { 
        try {
            const sql = 'CALL criar_usuario (?, ?, ?)';
            await db.execute(sql, [nome, email, senha]);
            return true;
        } catch (error) {
            console.error('Erro ao cadastrar usuário', error);  
            throw error;  
        }
    },
    verificarUsuario: async (email) => {
        //Método que verifica o email informado através da 'procedure'
        try {
            const [rows] = await db.execute('CALL buscar_usuario_por_email(?)', [email]);
            if (rows.length === 0) {
                throw new Error('Usuario não encontrado ou atualizado!');
            }
            return rows[0];
            
        } catch (error) {
            console.error('Error ao buscar Usuario', error)
            throw new Error('Error ao buscar Usuario');
        }
    }
};

module.exports = usuarioModel;