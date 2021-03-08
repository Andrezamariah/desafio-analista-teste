import { Given } from "cypress-cucumber-preprocessor/steps";

const url = 'https://saraiva.com.br'
Given('que ao acessar a pagina e preencher o campo nome', () => {
  cy.visit(url)
})