Feature: User want to book train ticket at Tiket.com
  I want to use this template for my feature file

  @tag1
  Scenario Outline: User want to reserve a Train Ticket
    Given User navigate to Tiket Page
    When User fill choose keberangkatan
    And User fill tujuan
    And User choose start date
    And User choose end date
    And User choose amount of <adults>
    And User choose amount of <infants>
    Then I verify the result page
    And User choose hotel from result page
    Then User directed to detail hotel page
    And User choose available room hotel
    Then User fill detail order form
    And User will directed to payment page
    Then User choose payment method
    And click lanjutkan
    Then After payment success User can see the detail of order

    Examples: 
      | adults 	| infants	|
      |     2 	|    3		|