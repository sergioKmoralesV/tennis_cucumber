Feature: Scorer
  Scenario: Game starts
    Given I should be on the page of the game
    Then I see result "0 - 0"
    And I should see button "anota1"
    And I should see button "anota2"

  Scenario: Player 1 scores first
    Given I should be on the page of the game
    Then player 1 scores
    Then I see result "15 - 0"

    Scenario: Player 2 scores first
      Given I should be on the page of the game
      Then player 1 scores
      Then I see result "15 - 0"

  Scenario: Player 1 wins "GAME - 15"
    Given I should be on the page of the game
    Then player 1 scores
    Then player 1 scores
    Then player 1 scores
    Then player 2 scores
    Then player 1 scores
    Then I see result "GAME - 15"

  Scenario: Deuce
    Given I should be on the page of the game
    Then player 1 scores
    Then player 1 scores
    Then player 1 scores
    Then player 2 scores
    Then player 2 scores
    Then player 2 scores
    Then I see result "DEUCE"
    Then I see result "40 - 40"

  Scenario: AD-40, player 1 wins
    Given I should be on the page of the game
    Then player 1 scores
    Then player 1 scores
    Then player 1 scores
    Then player 2 scores
    Then player 2 scores
    Then player 2 scores
    Then player 1 scores
    Then I see result "AD - 40"
    Then player 1 scores
    Then I see result "GAME - 40"

  Scenario: Game ends
    Given I should be on the page of the game
    Then player 1 scores
    Then player 1 scores
    Then player 1 scores
    Then player 2 scores
    Then player 1 scores
    Then I see result "GAME - 15"
    Then I see result "JUEGO TERMINADO"
    And I should see link "empezar"
