# README

# Web Conference Stant

Desafio:
Este é um desafio proposto pela empresa Stant.

Descrição:

"Você está planejando uma grande conferência de programação e recebeu diversas propostas de palestras, mas você está com problemas para organizá-las de acordo com as restrições de tempo do dia. Então, você decide escrever um programa para fazer isso por você." Stant



O desafio é um projeto desenvolvido em ruby on rails e conta o auxílio de algumas gems:
- Rspec
- Factory-bot
- Faker
- Bootstrap

## Instalação

Usei o editor de texto code.
Para fazer as requisições e testes utilizei o Postman.

Estamos usando a versão do Ruby 3.0.2 e rails 7.1.1

1. Clone o projeto.

   ```sh
   $ git@github.com:kellypc/web-conference-stant.git
   ```
### Estamos utilizando o Docker e Docker-compose:
2. Após entrar na pasta do projeto rode:
   
   ```sh
    $ docker image build -t meu_projeto_rails .
    $ docker-compose run rails bash
    $ bundle install
   ```
  Após instalar as gems poderemos fazer as operações normalmente no terminal.

3. Essa api conta com testes com o rspec, para rodá-los rode no terminal.

   ```sh
   $ bundle exec rspec
   ```
## Acessar a aplicação via web
3. Para subir a aplicação e acessar via web pela porta localhost:3000/

  ```sh
  $ rails s -b 0.0.0.0
  ``

## Documentacão

### Enviar uma lista de palestras

##### Request

```sh
POST  /api/v1/talks
```

```sh
Parameters:
{
    "talks": "talks.csv"
}
```

##### Response

```sh

  "Arquivo recebido com sucesso"
```

## Algumas imagens de testes realizados

### Página inicial da aplicação

<img width="1678" alt="Screenshot 2023-10-17 at 10 04 22" src="https://github.com/kellypc/web-conference-stant/assets/30739866/eecb8c81-54f5-4fd1-87e1-40f5fe2c5ba2">

### Requisição via Postman

<img width="1373" alt="Screenshot 2023-10-17 at 09 54 27" src="https://github.com/kellypc/web-conference-stant/assets/30739866/880ba9ca-abe5-464c-bf67-f2e1ecbdd3cf">

### Listando as Talks

![Screenshot 2023-10-17 at 09 58 27](https://github.com/kellypc/web-conference-stant/assets/30739866/3fae4d27-bd5b-4888-8f08-821a7cdb1486)

