# README

BuscaCEP

* Informações sobre o projeto
    * Versão Rails = 6.1.3.2
    * Versão do Ruby = 3.0.1p64

### COMO EXECUTAR O PROJETO

  * Baixe o projeto em sua maquina local;
  * Acesse o diretório onde você baixo o projeto via linha de comando;
  * Execute os seguintes comandos (levando em consideração que já tenha o ruby e o rails instalados):
      - bundle install (para instalar as gems necessárias do projeto)
      - rails db:create (para criar o banco de dados. Usamos neste caso o Sqlite para facilitar)
      - rails db:migrate (para rodar as migrações das tabelas)
      - rails db:seed (para inserir os usuários)
         + obs: quando for executado o comamando rails db:seed, será gerado automaticamente o token na tabela, pois na model User existe um método para gerar)
      - rails s (para subir o servidor)

### Informações de Consulta
Para a consulta do CEP, usamos a API ViaCEP. Utilizamos o Postman para fazer os testes na API. Os parâmetros de consulta são:

- Efetuando o Login:
  - Insira a URL localhost:3000/users/sign_in, com o verbo HTTP POST
  - Clique na opção body, e depois em raw, na mesma linha terá a uma flecha indicando mais opções. Localize a opção JSON
  - Insira o seguinte codigo abaixo, como é apresentado na imagem:

         {
           "user": {
            "email":"teste@teste.com.br",
            "password":"123456"
           }
          }
  ![image](https://user-images.githubusercontent.com/43194285/121761763-0a6ca000-cb08-11eb-9817-31ef4c8a4fac.png)

  - Após inserir os dados informados acima, clique em send. O retorno em caso de sucesso será como nas telas abaixo:
  ![image](https://user-images.githubusercontent.com/43194285/121762277-41908080-cb0b-11eb-855f-fa902c08c69b.png)
  ![image](https://user-images.githubusercontent.com/43194285/121762310-6d136b00-cb0b-11eb-9acf-a0a31719b610.png)


- Consultando CEP:
 - Na opção ao lado da URL, altere para o verbo HTTP GET.
 - Insira o endereço http://localhost:3000/api/v1/zip_code
 - Na aba Params, em Key insira o cep (em minúsculo), e em Value insira o CEP pra consulta. Após isto clique em Send. 
 Abaixo está uma imagem de exemplo de como os dados devem ser inseridos:
 ![image](https://user-images.githubusercontent.com/43194285/121762618-7e5d7700-cb0d-11eb-89bd-015e6d4c6fb9.png)

   
 O Retorno esperado é:
 ![image](https://user-images.githubusercontent.com/43194285/121762812-a26d8800-cb0e-11eb-804b-101abe30cd11.png)

Devido ao tempo, infelizmente não foi possível implementar a model de log_cep, onde a mesma iria armazenar as consultas dos CEP's dos usuários, e também os testes specs. Também deixei um PR como close, para exemplificar aprovações de alterações no sistemas por parte da equipe de Dev's.
