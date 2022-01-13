
Feature:Beon

  @test @debug
  Scenario Outline:  Filter a position
  Given the webbrower is on beon home page
  And the user click on Join Us button
  When the user filter the job offers with the values:
  | Tech       | Business   | Role       |
  | <Filter 1> | <Filter 2> | <Filter 3> |
  Then the beon website should show "<Expected MSG>"
  Examples:
  | Filter 1| Filter 2 | Filter 3      | Expected MSG                                        | 
  | Ruby    | Fintech  | QA Automation | QA Automation for Personal Loans and Credit Fintech |
  | Ruby    | Agency   | QA Automation | There are no results that match your criteria       |
