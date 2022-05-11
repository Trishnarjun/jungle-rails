describe("test", () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it("checks to cart", () => {
    cy.get('button.btn').click()
    cy.contains('Scented Blade')
  });


})