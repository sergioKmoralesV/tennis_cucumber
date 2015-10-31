Feature: Inicio
  Scenario: Pagina Inicio
    Given I open web page
    Then I show message "Bienvenido!"
    Then I show message "Desea empezar?"
    Then I expect see button "empezar" to "/score"
