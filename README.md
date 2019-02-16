# Rails Simple Api

## Apenas uma api simples com Rails.

 #### Comandos básicos:

Criando uma nova aplicação(API):

    rails new nome_aplicação --api

Criando controller: 

    rails g controller nome_controller

Criando model:

    rails g model Nome_modelo

Também é possível definir os campos ao serem criados naquele modelo:

    rails g model Nome_modelo titulo:string conteudo:text

Criando uma nova base de dados(conforme descrito no /config/database.yml):

    rails db:create

Migrando a base de dados:

    rails db:migrate

Inserindo dados na base(comandos no db/seeds.rb):

    rails db:seed

Iniciando a aplicação:

    rails s
    
#### Obs: Ao clonar essa aplicação você deve executar os seguintes comandos:

Instalar dependências:
    
    bundle install
    
Iniciar o banco de dados:

    rails db:create db:migrate db:seed

Iniciar o servidor da aplicação:
 
    rails s








