#language:pt

  @Filme
  Funcionalidade: CRUD Filme
    @CadastroFilme
    Cenario: Cadastro Filme
      Dado que tenha realizado login com dados validos
      E que tenha um payload da API de Filme
      Quando realizo uma requisicao do tipo POST de Filme
      Entao valido que recebo o status 201 no response
      E valido que no campo "categorias.tipo[1]" possui o valor "Comedia"
      E armazeno o id que recebo do response de Filme


    @ConsultaFilme
    Cenario: Consulta Filme
      Dado que tenha realizado login com dados validos
      E que tenha um payload da API de Filme
      Quando realizo uma requisicao do tipo GET de Filme atraves do nome
      Entao valido que recebo o status 200 no response
      E valido que no campo "categorias[0].tipo[1]" possui o valor "Comedia"

    Cenario: Alteracao Filme
      Dado que tenha realizado login com dados validos
      E que tenha um payload da API de Filme
      E altero o indice 0 da lista de categorias de filme com os valores
        | tipo | Comedia |
      E altero o indice 1 da lista de categorias de filme com os valores
        | tipo | Terror |
      Quando realizo uma requisicao do tipo PUT de Filme
      Entao valido que recebo o status 200 no response
      E valido que no campo "categorias.tipo[0]" possui o valor "Comedia"
      E valido que no campo "categorias.tipo[1]" possui o valor "Terror"


    @ConsultaDesafio
    Cenario: Consulta Desafio
      Dado que tenha realizado login com dados validos
      E que tenha um payload da API de Filme
      Quando realizo uma requisicao do tipo GET de Filme atraves do nome
      Entao valido que recebo o status 200 no response
      E valido que no campo "categorias[0].tipo[0]" possui o valor "Comedia"
      E valido que no campo "categorias[0].tipo[1]" possui o valor "Terror"