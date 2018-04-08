[![Maintainability](https://api.codeclimate.com/v1/badges/b98ed068381391e797bf/maintainability)](https://codeclimate.com/github/DSW12018/fluge/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/b98ed068381391e797bf/test_coverage)](https://codeclimate.com/github/DSW12018/fluge/test_coverage)     [![CircleCI](https://circleci.com/gh/DSW12018/fluge.svg?style=svg)](https://circleci.com/gh/DSW12018/fluge)

![](https://raw.githubusercontent.com/wiki/DSW12018/fluge/images/logo.png)

## 🔵 Sobre o FLUGE

Flüge é uma plataforma web cuja finalidade é buscar e comprar passagens aéreas.

## 🐳 Guia para rodar o projeto com o Docker

* ### Instalação

Para o uso é necessário possuir o Docker e o Docker Compose em sua máquina. Caso não os possua segue abaixo os link para instalação.

[Instalação Docker](https://docs.docker.com/engine/installation/linux/docker-ce/)

[Instalação Docker-compose](https://docs.docker.com/compose/install/).


* ## Rodando a aplicação

Para rodar a aplicação, entre na pasta do projeto em que está localizado o __docker-compose__ e digite no terminal:

&emsp;&emsp; Primeiro (Depois não precisará rodar esse comando mais):

```
  docker-compose build
```

 &emsp;&emsp; Caso seja a primeira vez que esteja rodando a aplicação crie o banco:

```
  docker-compose exec web rake db:setup
```

 &emsp;&emsp; Em seguida use o comando.

```
  docker-compose up
```
Espere até que todos os serviços estejam disponíveis, acesse a página inicial do projeto com o seguinte endereço: https://localhost:3000

* ### Comandos Principais

 &emsp;&emsp; Para subir o ambiente com logs digite: (Criará a imagem baseado no Dockerfile e criará os containers de serviços que definimos no docker-compose.yml)

 ```terminal
  docker-compose up
 ```

 &emsp;&emsp; Para desligar o ambiente de maneira completa. (Para e remove os containers, networks, volumes e imagens criadas pelo "up")

 ```terminal
  docker-compose down
 ```

 &emsp;&emsp; Para executar comandos depois de ter subido o docker-compose. (Dentro do seu novo ambiente)

 &emsp;&emsp;&emsp; Maneira direta. Exemplo: (Dirá a versão do seu Rails)
 ```terminal
  docker-compose run web rails -v

 ```
 &emsp;&emsp;&emsp; Abrirá um prompt interativo para usar quantos comandos desejar
 ```terminal
  docker-compose exec web sh

 ```
* ### Comandos Relevantes

 &emsp;&emsp; Para a utilização do ambiente em background, basta dar o comando abaixo e ele irá ligar o container:

 ```terminal
  docker-compose up -d
 ```
 &emsp;&emsp; Caso queira utilizar o ambiente com logs:

 ```terminal
  docker-compose up
 ```
 &emsp;&emsp; Para a visualização dos logs quando em modo de execução background, use o comando abaixo:

 ```terminal
  docker-compose logs -f
 ```

 &emsp;&emsp; Para pausar o container:

  ```terminal
  docker-compose stop
 ```
 &emsp;&emsp; E para religar um container parado use o comando:

 ```terminal
  docker-compose start
 ```

 &emsp;&emsp; Para listar os containers que estão em execução:

 ```terminal
  docker ps
 ```
 &emsp;&emsp; Para listar todos os containers já executados na sua máquina:

 ```terminal
  docker ps -a
 ```
