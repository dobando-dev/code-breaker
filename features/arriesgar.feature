Feature: Arriesgar un numero

    Arriesgar un numero para saber si gano o pierdo

    Scenario: ganar el juego
    Given inicio la aplicacion
    When el secreto es "5"
    And arriesgo con "5"
    Then debo ver el mensaje "Chee! Ganaste!"

    Scenario: arriesgo y pierdo la primer oportunidad
    Given inicio la aplicacion
    When el secreto es "5"
    And quedan "3" chances
    And arriesgo con "6"
    Then debo ver el mensaje "No! Te quedan 2 chances!"

    Scenario: arriesgo y pierdo la segunda oportunidad
    Given inicio la aplicacion
    When el secreto es "5"
    And quedan "2" chances
    And arriesgo con "6"
    Then debo ver el mensaje "No! Te quedan 1 chances!"

    Scenario: Arriesgo y no tengo mas oportunidades
    Given inicio la aplicacion
    When el secreto es "5"
    And quedan "1" chances
    And arriesgo con "6"
    Then debo ver el mensaje "Boludo! fuiste!"