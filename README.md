
**Documentação do Sistema de Vendas em Java**

**Introdução**

O Sistema de Vendas em Java é um projeto desenvolvido para gerenciar vendas de produtos. Atualmente, o sistema permite cadastrar estados.

**Requisitos**

-   Java 8 ou superior
-   PostgreSQL 9.5 ou superior

**Estrutura do Projeto**

O projeto é dividido em pacotes:

-   `br.com.keyssong`: pacote principal do projeto
-   `br.com.keyssong.model`: pacote que contém as classes de modelo (Estado, etc.)
-   `br.com.keyssong.dao`: pacote que contém as classes de acesso a dados (DAOs)
-   `br.com.keyssong.view`: pacote que contém as classes de interface gráfica (GUI)

**Dependências**

-   PostgreSQL JDBC Driver (driver do PostgreSQL)

**Como Executar o Projeto**

1.  Clone o repositório do projeto utilizando o comando  `git clone https://github.com/KeyssonG/Sistema-de-vendas-em-java.git`
2.  Abra o projeto no Eclipse ou outro IDE de sua preferência
3.  Configure as dependências do projeto, incluindo o driver do PostgreSQL
4.  Execute a classe  `TelaPrincipal`  para iniciar a aplicação

**Funcionalidades**

-   Cadastro de estados

**Classes e Métodos**

-   `br.com.keyssong.model.Estado`: classe que representa um estado
    -   `getId()`: retorna o ID do estado
    -   `getNome()`: retorna o nome do estado
    -   `setNome(String nome)`: define o nome do estado
-   `br.com.keyssong.dao.EstadoDAO`: classe que fornece acesso a dados de estados
    -   `cadastrarEstado(Estado estado)`: cadastra um novo estado
    -   `buscarEstado(int id)`: busca um estado pelo ID
-   `br.com.keyssong.view.TelaCadastroEstado`: classe que fornece a interface gráfica para cadastro de estados

**Contribuição**

Se você deseja contribuir para o projeto, por favor, faça um fork do repositório e envie um pull request com suas alterações.

**Licença**

O Sistema de Vendas em Java é licenciado sob a Licença MIT.

**Contato**

Se você tiver alguma dúvida ou precisar de ajuda, por favor, entre em contato com o desenvolvedor do projeto.

**Histórico de Alterações**

-   Versão 1.0: Lançamento inicial do projeto com funcionalidade de cadastro de estados
