## Pré-requisito
- Docker
- Docker-compose
- Conhecimento basicos de Docker

## Iniciando Ambiente
Faça o pull do projeto para seu ambiente, e execute os seguintes comndos:
```sh
docker-compose down -v && docker-compose up
```
Ao executar o comando acima, teremos as seguintes informações em nosso terminal:
![Alt text](./doc/img/container-running.png?raw=true "Container")

## Acessando Mirth Connect
Para realizar o acesso ao Mirth, precisamos baixar a instancia pelo endereço [mirth](http://localhost:8080/webadmin/Index.action) ou configurar em seu administrador de instancia, conforme a seguinte imagem:
![Alt text](./doc/img/administrator.png?raw=true "Administrator")

O acesso ao Mirth é normal como qualquer outra instancia. Em sua primeira inicialização, teremos que configurar seu usuário e senha, e pronto, temos o nosso ambiente liberado para uso.

## Inserindo JAR no Mirth Connect
Para que possa inserir o JAR no Mirth, e assim usar a bliblioteca dentro da ferramenta, devemos primeiro localizar a pasta criada em sua maquina, pois está pasta é o volume compartilhado com seu container, onde o arquivo será disponibilizado para o Mirth, e assim o uso nos canais.

Para localizar essa pasta no projeto, acesse o arquivo docker-compose.yml, na sessão ***Volume***. No meu exemplo, os arquivos estão no diretório **/tmp/pnb/mirth**.

Localizando a pasta, basta salvar o JAR na pasta, conforme a seguinte imagem:
![Alt text](./doc/img/jar-folder.png?raw=true "Jar")

Após o JAR ser salvo na pasta, devemos acessar o Mirth para o carregamento da Biblioteca. Para realizar este carregamento, devemos seguir os seguintes passos **Settings -> Resources -> Reload Resource**
![Alt text](./doc/img/realod-jar.png?raw=true "Reload Jar")
![Alt text](./doc/img/loaded-jar.png?raw=true "Reload Jar")

## Comandos Docker Úteis
- docker-compose down -v && docker-compose up 
- docker images
- docker ps
- docker ps -a
- docker exec -it mirth bash
- docker rm -f $(docker ps -a -q)
- docker volume rm $(docker volume ls -q --filter dangling=true)
- docker rmi -f container_id
- docker stats

### Links para Leitura/Ajuda
- [Docker](https://www.docker.com/)
- [Documentação](https://docs.docker.com/)
- [docker-compose](https://docs.docker.com/compose/install/)
- [Instalação em Linux](https://docs.docker.com/engine/install/ubuntu/)
- [Instalação em Macos](https://docs.docker.com/desktop/install/mac-install/)
- [Instalação em Windows](https://docs.docker.com/desktop/install/mac-install/)
