      #language: pt

      Funcionalidade: Tela de login
      Como aluno do Portal EBAC
      Quero me autenticar
      Para visualizar minhas notas

      Contexto: Dado que eu acesse a página de atenticação do portal EBAC

      Cenário: Usuario válido
      Quando eu digitar o usuário "joão@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de boas-vindas "Olá João"

      Cenário: Usuário inexistente
      Quando eu digitar o usuário "xxxxzzção@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de alerta: "Usuário inexistente"

      Cenário: Usuário com senha inválida
      Quando eu digitar o usuário "joão@ebac.com.br"
      E a senha "lkjsiaudhp"
      Então deve exibir uma mensagem de alerta: "Usuário ou senha inválida"

      Esquema do Cenário: Autenticar múltiplos usuários
      Quando eu digitar o <usuario>
      E a <senha>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | usuario            | senha       | mensagem   |
      | "joão@ebac.com.br" | "senha@123" | "Olá João" |

