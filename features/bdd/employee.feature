# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes 
    O usuário do sistema
    Deseja poder consultar informações dos funcionarios

    @cenario_um
    Cenario: Buscar informacoes dos funcionarios
        Dado que o usuario consulte informacoes do funcionario
        Quando ele realizar a pesquisa 
        Entao uma lista de funcionarios deve retornar

    @cenario_dois
    Cenario: Cadastrar funcionarios
        Dado que o usuario cadastre um novo funcionario
        Quando ele enviar as informacoes do funcionario
        Entao esse funcionario sera cadastrado

    @cenario_tres
    Cenario: Alterar dados do funcionario
        Dado que o usuario altere uma informacao do funcionario
        Quando ele enviar as novas informacoes
        Entao as informacoes serao alteradas

    @cenario_quatro
    Cenario: Deletar o cadastro de um funcionario
        Dado que o usuario queira deletar um funcionario
        Quando ele enviar a identificacao unica
        Entao esse funcionario sera deletado do sistema

        