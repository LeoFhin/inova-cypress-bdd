/// <reference types="cypress" />

context ('Acesso a página de login', () => {
    beforeEach(() => { //escolher qual site vai visitar
        cy.visit('https://www.saucedemo.com/v1/')
    });

afterEach(() => { //apos terminar de rodar o teste, fazer X ação
    cy.clearAllSessionStorage({log: true}) //limpar os dados dos testes
    cy.screenshot()
});

it('Login válido', () => { //criando os testes
    cy.get('[data-test="username"]').type('standard_user') //get = elemento selecionado / type oq vai ser escrito.
    cy.get('[data-test="password"]').type('secret_sauce') // mesma coisa do de cima
    cy.get('#login-button').click() // clicar no elemento
    cy.get('.title').should('contain', 'Products')
});

})

