describe("test", () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it("Clicks and directs to  the page", () => {
    cy.contains('Scented Blade').click()
  });
  

})