describe('AUTH-001 - Authentification OK', () => {
  it('Login avec ID et MDP valides', () => {
    cy.visit('https://opensource-demo.orangehrmlive.com/web/index.php/auth/login');
    cy.get('#username').type('admin');
    cy.get('#password').type('admin123');
    cy.get('button[type="submit"]').click();
    cy.contains('Dashboard').should('be.visible');
  });
});
