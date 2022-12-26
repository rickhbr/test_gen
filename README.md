# Teste da Gen

Essa é uma aplicação para o teste técnico da Gen, onde foi utilizando um json como mock para trazer as informações do aplicativo. A aplicação foi focada mais na estruturação da arquitetura do projeto, onde foi priorizada a parte técnica, utilizando boas práticas, SOLID, otimização do dispositivo móvel, inicializadores, GetX como gerenciador de estado e alguns packages para facilitar a implementação de Launcher Icons e Splash Screen.

## Iniciando o Aplicativo

Para rodar a aplicação será necessário fazer um clone do repositório e executar o comando Flutter pub get para baixar as denpendências.

# Solução apresentada
## GetX
O GetX foi escolhido por ser mais fácil para gerenciar alguns estados mais simples, onde envolve passagem de argumentos e controle do controlador das telas.

## Arquitetura
Foi escolhido o GetX_pattern por questão de experiência e afinidade com esse tipo de arquitetura, tornou-se bem prático manipular os dados e controlá-los com ele.

## Lógica da aplicação
Para as consultas do Json, foi utilizado o File local, e para a manipulação do json foi realizado um decode para transformá-lo em um Map<String, dynamic> e depois foi feito um fromJson para ler como objeto, e o QuickType para geração do Model e Parse do json. Logo após foi feito um fetch dessa lista dentro do controlador e de lá ele passou a gerenciar todos os argumentos, inclusive os que foram passados para a tela de Detalhes.

## Layout da aplicação
O layout foi pensado na palheta de cores da Marvel, apresentando um design simples e de fácil visualização, associando que o usuário já esteja logado no sistema e ele queira apenas visualizar os filmes da Marvel.

## Considerações finais
Por fim, agradeço pelo teste, foi muito bom para relembrar diversos conceitos e dar uma reforçada em alguns pontos. Espero que gostem!

##Fotos
Foto 1 (Tela de Home)
![image](https://user-images.githubusercontent.com/21203399/209588686-a4b7ef67-f8cc-489b-8d83-125ddb13bead.png)

Foto 2 (Tela de Detalhes)
![image](https://user-images.githubusercontent.com/21203399/209588692-0c744034-3594-4f5b-b7e4-27413a86f866.png)

Foto 3 (Tela de Home fazendo scroll)
![image](https://user-images.githubusercontent.com/21203399/209588701-ecec2b41-f511-4f03-955f-2d5d78d27009.png)
