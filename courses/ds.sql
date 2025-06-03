--------------------------- SCRIPT DAS QUESTÔES DO CURSO - DESENVOLVIMENTO DE SISTEMAS ---------------------------

USE QUIZ;

-- ID do curso: 1
CALL inserir_curso(
    'Desenvolvimento de Sistemas', 
    'Curso focado em lógica, programação e desenvolvimento de software.'
);

-- ID: 1
CALL inserir_disciplina(
    'Programação e Algoritmos',
    1 
);

-- ID: 2
CALL inserir_disciplina(
    'Programação Web',
    1 
);

-- ID: 3
CALL inserir_disciplina(
    'Banco de Dados',
    1 
);

-- ID: 4
CALL inserir_disciplina(
    'Desenvolvimento de Sistemas',
    1 
);

-- ID: 5
CALL inserir_disciplina(
    'Mobile',
    1 
);

-- ID: 6
CALL inserir_disciplina(
    'Sistemas Embarcados',
    1 
);

-- ID: 7
CALL inserir_disciplina(
    'Fundamentos da Informática',
    1 
);

-- ID: 8
CALL inserir_disciplina(
    'Inglês Instrumental',
    1 
);

-- ID: 9
CALL inserir_disciplina(
    'Ética e Cidadania Organizacional',
    1 
);

-- ID: 10
CALL inserir_disciplina(
    'Design Digital',
    1 
);

-- ID: 11
CALL inserir_disciplina(
    'LTT',
    1 
);

-- ID: 12
CALL inserir_disciplina(
    'APS',
    1 
);

-- ID: 13
CALL inserir_disciplina(
    'OSA',
    1 
);



------------------------------------ Questões de Programação e Algoritmos ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual das opções abaixo melhor define o conceito de um algoritmo?',
    2, -- ID da dificuldade (médio)
    1 -- ID da disciplina 
);

CALL inserir_alternativa('Um programa que executa operações matemáticas de forma automática.', false, 1);
CALL inserir_alternativa('Um conjunto finito de passos lógicos organizados para resolver um problema.', true, 1);
CALL inserir_alternativa('Uma linguagem de programação utilizada para escrever programas.', false, 1);
CALL inserir_alternativa('Um método de depuração utilizado para identificar erros em um código.', false, 1);

-- Questão 2
CALL inserir_questao(
    'Em um algoritmo, qual é a principal função de um operador lógico?',
    2, -- ID da dificuldade (médio)
    1
);

CALL inserir_alternativa('Executar cálculos matemáticos envolvendo múltiplos valores.', false, 2);
CALL inserir_alternativa('Comparar dois valores para determinar qual é o maior.', false, 2);
CALL inserir_alternativa('Avaliar condições compostas, retornando verdadeiro ou falso.', true, 2);
CALL inserir_alternativa('Definir o tipo de variável que será utilizada no programa.', false, 2);


-- Questão 3
CALL inserir_questao(
    'Qual é o principal motivo para utilizar tratamento de erros e exceções em um programa?',
    3, -- ID da dificuldade (avançado)
    1 
);

CALL inserir_alternativa('Garantir que todas as funções sejam executadas, mesmo que ocorram erros.', false, 3);
CALL inserir_alternativa('Prevenir que o programa seja finalizado inesperadamente ao lidar com situações imprevistas.', true, 3);
CALL inserir_alternativa('Aumentar o desempenho do código, eliminando falhas de sintaxe.', false, 3);
CALL inserir_alternativa('Identificar todas as variáveis não utilizadas em tempo de execução.', false, 3);


-- Questão 4
CALL inserir_questao(
    'Durante a execução de um algoritmo estruturado, você decide implementar laços de repetição com condições de parada. Qual dos cenários abaixo exemplifica melhor o uso desse tipo de laço?',
    3,
    1
);

CALL inserir_alternativa('Um contador que imprime números de 1 a 100 sem interrupção.', false, 4);
CALL inserir_alternativa('Um programa que lê números de um usuário até que um valor negativo seja inserido.', true, 4);
CALL inserir_alternativa('Um cálculo matemático baseado em operadores aritméticos e relacionais.', false, 4);
CALL inserir_alternativa('Uma validação de entrada em que todos os números digitados devem ser pares.', false, 4);


-- Questão 5
CALL inserir_questao(
    'Em um programa estruturado, por que o uso de funções recursivas pode ser vantajoso em relação a laços de repetição tradicionais?',
    3,
    1
);

CALL inserir_alternativa('Funções recursivas são sempre mais rápidas do que laços de repetição.', false, 5);
CALL inserir_alternativa('Eliminam a necessidade de variáveis locais no código.', false, 5);
CALL inserir_alternativa('São mais fáceis de implementar em qualquer tipo de linguagem de programação.', false, 5);
CALL inserir_alternativa('Permitem resolver problemas complexos, como fatoriais e Fibonacci, de forma mais natural e organizada.', true, 5);


------------------------------------ Questões de Programação Web ------------------------------------
-- Questão 1 
CALL inserir_questao(
    'Qual é o elemento raiz de um documento HTML?',
    1, -- ID da dificuldade (fácil)
    2  -- ID da disciplina (Programação Web)
);

CALL inserir_alternativa('<body>', false, 6);
CALL inserir_alternativa('<header>', false, 6);
CALL inserir_alternativa('<html>', true, 6);
CALL inserir_alternativa('<section>', false, 6);


-- Questão 2
CALL inserir_questao(
    'Qual é a finalidade da tag <meta charset="UTF-8"> no cabeçalho de um documento HTML?',
    2, -- ID da dificuldade (médio)
    2
);

CALL inserir_alternativa('Definir o tipo de conteúdo da página.', false, 7);
CALL inserir_alternativa('Definir o formato de codificação de caracteres utilizado.', true, 7);
CALL inserir_alternativa('Adicionar um título à página.', false, 7);
CALL inserir_alternativa('Definir o idioma da página.', false, 7);


-- Questão 3 
CALL inserir_questao(
    'No contexto do HTML, qual é a principal diferença entre as tags <script> e <noscript>?',
    3,
    2
);

CALL inserir_alternativa('<script> é usada para incluir scripts JavaScript, enquanto <noscript> é usada para incluir conteúdos alternativos quando o JavaScript está desabilitado no navegador.', true, 8);
CALL inserir_alternativa('Ambas são usadas para inserir códigos CSS.', false, 8);
CALL inserir_alternativa('<noscript> é usada para scripts JavaScript, e <script> é para códigos CSS.', false, 8);
CALL inserir_alternativa('Não existe diferença, são usadas para os mesmos propósitos.', false, 8);


-- Questão 4 
CALL inserir_questao(
    'Em um documento HTML, a tag <html> deve conter qual dos seguintes elementos obrigatórios dentro de seu conteúdo?',
    1,
    2
);

CALL inserir_alternativa('A tag <body> e <head>.', true, 9);
CALL inserir_alternativa('Somente a tag <header>.', false, 9);
CALL inserir_alternativa('Somente a tag <head>.', false, 9);
CALL inserir_alternativa('Apenas a tag <footer>.', false, 9);


-- Questão 5 
CALL inserir_questao(
    'O que acontece se você usar um setTimeout para alterar a cor de fundo de um elemento, mas dentro da função de callback você perde o contexto correto da variável que referencia o elemento?',
    3,
    2
);

CALL inserir_alternativa('O código irá funcionar normalmente, pois o contexto é preservado dentro de setTimeout.', false, 10);
CALL inserir_alternativa('A cor de fundo será alterada para a cor correta, mas o elemento não será encontrado dentro do setTimeout.', false, 10);
CALL inserir_alternativa('O setTimeout causará um erro, porque o contexto não pode ser acessado corretamente.', true, 10);
CALL inserir_alternativa('O setTimeout ignorará a alteração de cor, mas não causará nenhum erro.', false, 10);

------------------------------------ Questões de Banco de Dados ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual comando SQL é utilizado para inserir novos registros em uma tabela?',
    1, -- Dificuldade: fácil
    3  -- ID da disciplina
);

CALL inserir_alternativa('SELECT', false, 11);
CALL inserir_alternativa('INSERT INTO', true, 11);
CALL inserir_alternativa('UPDATE', false, 11);
CALL inserir_alternativa('DELETE', false, 11);

-- Questão 2
CALL inserir_questao(
    'Qual é a função de uma chave estrangeira (foreign key) em um banco de dados relacional?',
    2, -- Dificuldade: médio
    3
);

CALL inserir_alternativa('Criar índices para acelerar consultas em uma tabela.', false, 12);
CALL inserir_alternativa('Definir uma coluna como a chave primária da tabela.', false, 12);
CALL inserir_alternativa('Controlar o acesso dos usuários ao banco de dados.', false, 12);
CALL inserir_alternativa('Garantir a integridade referencial entre duas tabelas, vinculando uma coluna a outra tabela.', true, 12);


-- Questão 3
CALL inserir_questao(
    'Qual comando SQL é utilizado para alterar dados existentes em uma tabela?',
    1, -- Dificuldade: fácil
    3
);

CALL inserir_alternativa('UPDATE', true, 13);
CALL inserir_alternativa('SELECT', false, 13);
CALL inserir_alternativa('INSERT INTO', false, 13);
CALL inserir_alternativa('DELETE', false, 13);

-- Questão 4
CALL inserir_questao(
    'Em um banco de dados relacional, qual é a principal função de uma chave primária?',
    1, -- Dificuldade: fácil
    3
);

CALL inserir_alternativa('Garantir a unicidade de cada registro na tabela', true, 14);
CALL inserir_alternativa('Estabelecer relações entre tabelas', false, 14);
CALL inserir_alternativa('Definir o tipo de dados de uma coluna', false, 14);
CALL inserir_alternativa('Armazenar dados temporários', false, 14);

-- Questão 5
CALL inserir_questao(
    'Qual é a principal vantagem de utilizar índices em tabelas de banco de dados?',
    2, -- Dificuldade: médio
    3
);

CALL inserir_alternativa('Aumentar a segurança dos dados', false, 15);
CALL inserir_alternativa('Melhorar a performance das consultas', true, 15);
CALL inserir_alternativa('Reduzir o espaço de armazenamento', false, 15);
CALL inserir_alternativa('Facilitar a inserção de novos registros', false, 15);

------------------------------------ Questões de Desenvolvimento de Sistemas ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual é a principal finalidade do padrão MVC no desenvolvimento de sistemas?',
    1,
    4
);

CALL inserir_alternativa('Separar a aplicação em camadas Model, View e Controller para melhor organização e manutenção.', true, 16);
CALL inserir_alternativa('Aumentar a velocidade de execução do sistema.', false, 16);
CALL inserir_alternativa('Garantir que o sistema funcione sem erros.', false, 16);
CALL inserir_alternativa('Reduzir o consumo de memória da aplicação.', false, 16);

-- Questão 2
CALL inserir_questao(
    'Qual é a principal vantagem de utilizar design orientado a objetos em sistemas complexos?',
    2,
    4
);

CALL inserir_alternativa('Permite reutilização de código através de herança e polimorfismo.', true, 17);
CALL inserir_alternativa('Aumenta o tamanho final do programa.', false, 17);
CALL inserir_alternativa('Evita o uso de funções.', false, 17);
CALL inserir_alternativa('Impede o uso de variáveis globais.', false, 17);

-- Questão 3
CALL inserir_questao(
    'Em desenvolvimento de sistemas, o que é a técnica de refatoração?',
    3,
    4
);

CALL inserir_alternativa('Reescrever o sistema do zero para corrigir erros.', false, 18);
CALL inserir_alternativa('Modificar o código para melhorar sua estrutura sem alterar seu comportamento.', true, 18);
CALL inserir_alternativa('Adicionar novas funcionalidades ao sistema.', false, 18);
CALL inserir_alternativa('Desenvolver a interface gráfica do sistema.', false, 18);

-- Questão 4
CALL inserir_questao(
    'O que significa o termo "acoplamento" em desenvolvimento de sistemas?',
    2,
    4
);

CALL inserir_alternativa('O grau de dependência entre módulos ou componentes do sistema.', true, 19);
CALL inserir_alternativa('A quantidade de código duplicado em um sistema.', false, 19);
CALL inserir_alternativa('A velocidade com que o sistema processa dados.', false, 19);
CALL inserir_alternativa('O número de linhas de código do sistema.', false, 19);

-- Questão 5
CALL inserir_questao(
    'Qual das seguintes práticas é essencial para garantir a segurança em sistemas distribuídos?',
    3,
    4
);

CALL inserir_alternativa('Evitar o uso de logs para não armazenar informações.', false, 20);
CALL inserir_alternativa('Manter todos os módulos desacoplados.', false, 20);
CALL inserir_alternativa('Executar todos os processos em uma única máquina.', false, 20);
CALL inserir_alternativa('Utilizar criptografia para proteger dados em trânsito.', true, 20);


------------------------------------ Questões de Mobile ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual é o sistema operacional mais utilizado em dispositivos móveis atualmente?',
    1,
    5
);

CALL inserir_alternativa('iOS', false, 21);
CALL inserir_alternativa('Android', true, 21);
CALL inserir_alternativa('Windows Mobile', false, 21);
CALL inserir_alternativa('BlackBerry OS', false, 21);

-- Questão 2
CALL inserir_questao(
    'Em desenvolvimento mobile, o que é um APK?',
    2,
    5
);

CALL inserir_alternativa('Um tipo de linguagem de programação.', false, 22);
CALL inserir_alternativa('O pacote de instalação de aplicativos Android.', true, 22);
CALL inserir_alternativa('Uma ferramenta para testar aplicativos iOS.', false, 22);
CALL inserir_alternativa('Um protocolo de comunicação entre dispositivos.', false, 22);

-- Questão 3
CALL inserir_questao(
    'Qual é a principal vantagem do desenvolvimento mobile híbrido em relação ao nativo?',
    3,
    5
);

CALL inserir_alternativa('Performance superior em todos os casos.', false, 23);
CALL inserir_alternativa('Permite criar um único código que roda em múltiplas plataformas.', true, 23);
CALL inserir_alternativa('Acesso total a todos os recursos do hardware.', false, 23);
CALL inserir_alternativa('Não necessita de frameworks ou bibliotecas adicionais.', false, 23);

-- Questão 4
CALL inserir_questao(
    'No framework Ionic, o componente IonRange é utilizado para:',
    2,
    5
);

CALL inserir_alternativa('Exibir uma lista de itens clicáveis.', false, 24);
CALL inserir_alternativa('Criar um controle deslizante para selecionar valores dentro de um intervalo.', true, 24);
CALL inserir_alternativa('Definir o layout da aplicação usando grids.', false, 24);
CALL inserir_alternativa('Exibir uma barra de progresso que indica o carregamento de uma página.', false, 24);

-- Questão 5
CALL inserir_questao(
    'No Ionic Framework, o componente IonChip serve para:',
    3,
    5
);

CALL inserir_alternativa('Exibir um menu lateral deslizante. ', false, 25);
CALL inserir_alternativa('Criar pequenos elementos interativos, como etiquetas ou filtros, que podem conter texto, ícones ou botões.', true, 25);
CALL inserir_alternativa('Criar formulários com campos de texto e seleção.', false, 25);
CALL inserir_alternativa('Renderizar gráficos e diagramas interativos.', false, 25);

------------------------------------ Questões de Sistemas Embarcados ------------------------------------


-- Questão 1
CALL inserir_questao(
    'Qual software é comumente utilizado para simular circuitos com Arduino, facilitando o aprendizado prático em sistemas embarcados?',
    1,
    6
);

CALL inserir_alternativa('Proteus', false, 26);
CALL inserir_alternativa('Tinkercad', true, 26);
CALL inserir_alternativa('Multisim', false, 26);
CALL inserir_alternativa('LabVIEW', false, 26);

-- Questão 2
CALL inserir_questao(
    'No Arduino, qual função é usada para configurar um pino como saída?',
    2,
    6
);

CALL inserir_alternativa('pinMode(pino, INPUT);', false, 27);
CALL inserir_alternativa('digitalWrite(pino, HIGH);', false, 27);
CALL inserir_alternativa('pinMode(pino, OUTPUT);', true, 27);
CALL inserir_alternativa('analogRead(pino);', false, 27);

-- Questão 3
CALL inserir_questao(
    'No Tinkercad, qual recurso permite simular o funcionamento de circuitos com Arduino?',
    2,
    6
);

CALL inserir_alternativa('Simulador de códigos Python.', false, 28);
CALL inserir_alternativa('Simulador de circuitos eletrônicos e microcontroladores.', true, 28);
CALL inserir_alternativa('Editor de imagens para placas.', false, 28);
CALL inserir_alternativa('Compilador de C++ offline.', false, 28);

-- Questão 4
CALL inserir_questao(
    'Qual é o valor típico da tensão lógica usada nos pinos digitais do Arduino Uno?',
    3,
    6
);

CALL inserir_alternativa('3,3V', false, 29);
CALL inserir_alternativa('5V', true, 29);
CALL inserir_alternativa('12V', false, 29);
CALL inserir_alternativa('1,8V', false, 29);

-- Questão 5
CALL inserir_questao(
    'Em sistemas embarcados, qual é a principal função do watchdog timer?',
    3,
    6
);

CALL inserir_alternativa('Controlar a frequência do processador.', false, 30);
CALL inserir_alternativa('Reiniciar o sistema automaticamente em caso de falha ou travamento.', true, 30);
CALL inserir_alternativa('Aumentar a memória disponível para o programa.', false, 30);
CALL inserir_alternativa('Gerenciar a comunicação serial.', false, 30);

------------------------------------ Questões de Fundamentos da Informática ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual dos dispositivos abaixo é considerado um periférico de entrada de dados?',
    1,
    7
);

CALL inserir_alternativa('Monitor', false, 31);
CALL inserir_alternativa('Teclado', true, 31);
CALL inserir_alternativa('Impressora', false, 31);
CALL inserir_alternativa('Projetor', false, 31);

-- Questão 2
CALL inserir_questao(
    'O que significa a sigla CPU em um computador?',
    1,
    7
);

CALL inserir_alternativa('Central Power Unit', false, 32);
CALL inserir_alternativa('Central Processing Unit', true, 32);
CALL inserir_alternativa('Computer Program Unit', false, 32);
CALL inserir_alternativa('Core Processor Utility', false, 32);

-- Questão 3
CALL inserir_questao(
    'Qual é a principal função de um sistema operacional?',
    2,
    7
);

CALL inserir_alternativa('Criar documentos e planilhas.', false, 33);
CALL inserir_alternativa('Gerenciar os recursos do hardware e fornecer interface para o usuário.', true, 33);
CALL inserir_alternativa('Aumentar a velocidade da internet.', false, 33);
CALL inserir_alternativa('Instalar drivers de impressora automaticamente.', false, 33);

-- Questão 4
CALL inserir_questao(
    'Qual dos itens abaixo representa um software de aplicação?',
    2,
    7
);

CALL inserir_alternativa('Windows 10', false, 34);
CALL inserir_alternativa('Microsoft Word', true, 34);
CALL inserir_alternativa('BIOS', false, 34);
CALL inserir_alternativa('Linux Kernel', false, 34);

-- Questão 5
CALL inserir_questao(
    'Qual é a função da memória RAM em um computador?',
    3,
    7
);

CALL inserir_alternativa('Armazenar permanentemente todos os arquivos do usuário.', false, 35);
CALL inserir_alternativa('Fornecer energia para o processador.', false, 35);
CALL inserir_alternativa('Executar temporariamente programas e processos em uso.', true, 35);
CALL inserir_alternativa('Proteger o sistema contra vírus.', false, 35);

------------------------------------ Questões de Inglês Instrumental ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Na leitura de textos técnicos em inglês, o que significa o termo "software"?',
    1,
    8
);

CALL inserir_alternativa('Parte física do computador.', false, 36);
CALL inserir_alternativa('Conjunto de programas e sistemas operacionais.', true, 36);
CALL inserir_alternativa('Dispositivo de entrada de dados.', false, 36);
CALL inserir_alternativa('Memória de armazenamento interno.', false, 36);

-- Questão 2
CALL inserir_questao(
    'Qual a tradução mais adequada da palavra "network" em contextos de informática?',
    1,
    8
);

CALL inserir_alternativa('Rede', true, 37);
CALL inserir_alternativa('Trabalho', false, 37);
CALL inserir_alternativa('Teclado', false, 37);
CALL inserir_alternativa('Programa', false, 37);

-- Questão 3
CALL inserir_questao(
    'Em um manual técnico, o verbo "install" está mais relacionado a qual ação?',
    2,
    8
);

CALL inserir_alternativa('Excluir um arquivo.', false, 38);
CALL inserir_alternativa('Modificar um código.', false, 38);
CALL inserir_alternativa('Instalar um programa ou componente.', true, 38);
CALL inserir_alternativa('Executar um processo de segurança.', false, 38);

-- Questão 4
CALL inserir_questao(
    'Em textos técnicos, a expressão "user-friendly interface" refere-se a:',
    2,
    8
);

CALL inserir_alternativa('Interface com proteção antivírus.', false, 39);
CALL inserir_alternativa('Interface de difícil acesso.', false, 39);
CALL inserir_alternativa('Interface amigável e fácil de usar.', true, 39);
CALL inserir_alternativa('Interface exclusiva para administradores.', false, 39);

-- Questão 5
CALL inserir_questao(
    'O que o leitor pode entender ao encontrar o termo "troubleshooting" em um guia técnico?',
    3,
    8
);

CALL inserir_alternativa('Atualização de sistema.', false, 40);
CALL inserir_alternativa('Diagnóstico e solução de problemas.', true, 40);
CALL inserir_alternativa('Criação de relatórios de desempenho.', false, 40);
CALL inserir_alternativa('Desinstalação de aplicativos.', false, 40);

------------------------------------ Questões de Ética e Cidadania Organizacional ------------------------------------

-- Questão 1
CALL inserir_questao(
    'O que se entende por ética no ambiente organizacional?',
    1,
    9
);

CALL inserir_alternativa('Conjunto de normas religiosas aplicadas à empresa.', false, 41);
CALL inserir_alternativa('Conjunto de valores e princípios que orientam o comportamento dos profissionais.', true, 41);
CALL inserir_alternativa('Regulamento interno criado por sindicatos.', false, 41);
CALL inserir_alternativa('Regras de etiqueta social fora do ambiente de trabalho.', false, 41);

-- Questão 2
CALL inserir_questao(
    'O que caracteriza um comportamento cidadão dentro de uma organização?',
    1,
    9
);

CALL inserir_alternativa('Ignorar regras da empresa em nome da produtividade.', false, 42);
CALL inserir_alternativa('Respeitar colegas, cumprir deveres e colaborar para o bem coletivo.', true, 42);
CALL inserir_alternativa('Focar apenas nos objetivos pessoais.', false, 42);
CALL inserir_alternativa('Evitar qualquer tipo de participação coletiva.', false, 42);

-- Questão 3
CALL inserir_questao(
    'Qual das alternativas representa um exemplo de responsabilidade social empresarial?',
    2,
    9
);

CALL inserir_alternativa('Aumentar os lucros por meio de cortes de pessoal.', false, 43);
CALL inserir_alternativa('Oferecer programas de capacitação para a comunidade local.', true, 43);
CALL inserir_alternativa('Promover metas agressivas de produtividade sem considerar o bem-estar.', false, 43);
CALL inserir_alternativa('Controlar rigidamente os horários dos funcionários.', false, 43);

-- Questão 4
CALL inserir_questao(
    'A ética profissional está diretamente relacionada a:',
    2,
    9
);

CALL inserir_alternativa('Buscar benefícios pessoais mesmo que em desacordo com as normas.', false, 44);
CALL inserir_alternativa('Cumprir as responsabilidades com honestidade, respeito e integridade.', true, 44);
CALL inserir_alternativa('Usar estratégias antiéticas para alcançar metas.', false, 44);
CALL inserir_alternativa('Manter segredo sobre falhas da empresa.', false, 44);

-- Questão 5
CALL inserir_questao(
    'Em um cenário de conflito ético, qual a atitude mais recomendada para um profissional responsável?',
    3,
    9
);

CALL inserir_alternativa('Agir conforme interesses pessoais, ignorando normas da empresa.', false, 45);
CALL inserir_alternativa('Refletir sobre as consequências, consultar códigos de conduta e agir com base nos valores éticos.', true, 45);
CALL inserir_alternativa('Evitar se posicionar para não gerar conflitos.', false, 45);
CALL inserir_alternativa('Tomar decisões com base na opinião da maioria, mesmo que errada.', false, 45);



------------------------------------ Questões de Design Digital ------------------------------------

-- Questão 1
CALL inserir_questao(
    'O que é design digital?',
    1,
    10
);

CALL inserir_alternativa('É o uso de papel para criar projetos de engenharia.', false, 46);
CALL inserir_alternativa('É o processo de criação de interfaces visuais para ambientes digitais, como sites e aplicativos.', true, 46);
CALL inserir_alternativa('É a pintura manual de obras de arte.', false, 46);
CALL inserir_alternativa('É a criação de componentes eletrônicos.', false, 46);

-- Questão 2
CALL inserir_questao(
    'Qual ferramenta é amplamente usada para criar layouts de interfaces e protótipos digitais?',
    1,
    10
);

CALL inserir_alternativa('Excel', false, 47);
CALL inserir_alternativa('Figma', true, 47);
CALL inserir_alternativa('Word', false, 47);
CALL inserir_alternativa('AutoCAD', false, 47);

-- Questão 3
CALL inserir_questao(
    'No design digital, o que significa o termo "responsividade"?',
    2,
    10
);

CALL inserir_alternativa('Capacidade de um site responder rapidamente a e-mails.', false, 48);
CALL inserir_alternativa('Adaptação do layout a diferentes tamanhos de tela e dispositivos.', true, 48);
CALL inserir_alternativa('Aumentar a resolução de uma imagem.', false, 48);
CALL inserir_alternativa('Uso de inteligência artificial no design.', false, 48);

-- Questão 4
CALL inserir_questao(
    'Qual princípio de design garante que os elementos de uma interface estejam organizados de forma clara e compreensível?',
    2,
    10
);

CALL inserir_alternativa('Contraste', false, 49);
CALL inserir_alternativa('Hierarquia visual', true, 49);
CALL inserir_alternativa('Estética', false, 49);
CALL inserir_alternativa('Recorrência', false, 49);

-- Questão 5
CALL inserir_questao(
    'Por que o uso correto das cores é importante no design digital?',
    3,
    10
);

CALL inserir_alternativa('Porque economiza memória no servidor.', false, 50);
CALL inserir_alternativa('Porque influencia na usabilidade e transmite emoções ou mensagens específicas.', true, 50);
CALL inserir_alternativa('Porque evita o uso de imagens.', false, 50);
CALL inserir_alternativa('Porque substitui o conteúdo textual.', false, 50);



------------------------------------ Questões de LTT ------------------------------------

-- Questão 1
CALL inserir_questao(
    'Qual das frases abaixo está escrita corretamente de acordo com a norma padrão da língua portuguesa?',
    1,
    11
);

CALL inserir_alternativa('Nós vai no mercado amanhã.', false, 51);
CALL inserir_alternativa('Eles trouxeram os documentos solicitados.', true, 51);
CALL inserir_alternativa('A gente fomos no cinema ontem.', false, 51);
CALL inserir_alternativa('Tu vai gostar desse filme.', false, 51);

-- Questão 2
CALL inserir_questao(
    'Qual é a função principal do sujeito em uma oração?',
    1,
    11
);

CALL inserir_alternativa('Indicar o tempo verbal.', false, 52);
CALL inserir_alternativa('Apontar a ação que o verbo expressa.', false, 52);
CALL inserir_alternativa('Indicar quem pratica ou sofre a ação expressa pelo verbo.', true, 52);
CALL inserir_alternativa('Modificar o sentido do substantivo.', false, 52);

-- Questão 3
CALL inserir_questao(
    'Assinale a alternativa em que o uso da crase está correto:',
    2,
    11
);

CALL inserir_alternativa('Cheguei à escola atrasado.', true, 53);
CALL inserir_alternativa('Fui à pé até o centro.', false, 53);
CALL inserir_alternativa('Entreguei o trabalho à ele.', false, 53);
CALL inserir_alternativa('Estava disposto à sair.', false, 53);

-- Questão 4
CALL inserir_questao(
    'Na interpretação de textos, o que é inferência?',
    2,
    11
);

CALL inserir_alternativa('Copiar trechos do texto.', false, 54);
CALL inserir_alternativa('Deduzir informações implícitas com base no que está escrito.', true, 54);
CALL inserir_alternativa('Encontrar erros de ortografia.', false, 54);
CALL inserir_alternativa('Memorizar todas as palavras do texto.', false, 54);

-- Questão 5
CALL inserir_questao(
    'Em qual das alternativas há um erro de concordância verbal?',
    3,
    11
);

CALL inserir_alternativa('Fazem dois meses que ele viajou.', true, 55);
CALL inserir_alternativa('Faz dois meses que ele viajou.', false, 55);
CALL inserir_alternativa('Havia muitos alunos na sala.', false, 55);
CALL inserir_alternativa('Faltam dois dias para o evento.', false, 55);

------------------------------------ Questões de APS ------------------------------------




------------------------------------ Questões de OSA ------------------------------------
