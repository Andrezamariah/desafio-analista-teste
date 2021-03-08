
Feature: Cadastro pessoa fisica 

    Eu como pessoa fisica, desejo realizar o cadastro na loja

Scenario: Realizar um cadastro valido 
    Given que ao acessar a pagina 
    And preencher o campo nome
    And preencher o campo sobrenome
    And preencher o campo e-mail
    And preencher o campo senha
    And preencher o campo confirmar senha
    And preencher o campo CPF
    And preencher o campo sexo
    And preencher o campo data de nascimento 
    And preencher o campo celular 
    And preencher o campo endereço 
    And a página deverá conter as cores preta e amarela 
    And os campos obrigatórios deverão estar sinalizados com asterisco em vermelho
    And deverá ser possível mostrar um radio button permitindo ou não o recebimento de ofertas
    When clicar no botao finalizar cadastro
    Then o cliente deverá ser cadastrado com sucesso


Scenario: Validar a pagina de cadastro sem preencher campos obrigatorios
   Given que ao acessar a pagina 
   And não preencher o campo nome
   And não preencher o campo sobrenome
   And não preencher o campo e-mail
   And não preencher o campo senha
   And não preencher o campo confirmacao de senha 
   And não preencher o campo CPF
   And não preencher o campo sexo
   And não preencher o campo data de nascimento
   And não preencher o campo celular 
   And não preencher o campo endereço
   When clicar no botao salvar 
   Then a pagina deverá informar que os campos são de preenchimento obrigatorios.



 
Scenario: Validar busca e compra de livro digital
    Given que o cliente pessoa fisica, esteja cadastrado na loja 
    And ao buscar um livro fisico 
    When o livro fisico for selecionado deverá conter a opcao de livro digital 
    And o livro digital deverá conter as mesmas descricões e caracteristas do produto fisico 
    Then o sistema deverá permitir adicionar o livro digital ao carrinho
