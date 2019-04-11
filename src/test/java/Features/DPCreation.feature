    Feature: As a HR Ops user I should be able to create a DP(Distribution Point) in the system

    Background:HR Ops should be logged in to Obelix Dashboard

    Scenario Outline: Verify user is able to create a DP with API request

       Given I want to execute service <serviceName>

        When I submit the POST request as per the <data> in payload and <header>

        And I validate status code

        And I validate response content

        And I validate header parameter in response

        Examples:
                    |serviceName|data   |header|
                    |endpoint   |payload|hr_ops|

    Scenario Outline: Verify user is able to modify a created DP with API request

           Given I want to execute service <serviceName>

            When I submit the PUT request as per the <data> in payload and <header>

            And I validate status code

            And I validate response content with changes provided

            And I validate header parameter in response

            Examples:
                      |serviceName|data   |header  |
                      |endpoint   |payload|hr_ops  |


    Scenario Outline: Verify user is able to deactivate a created DP with API request

                   Given I want to execute service <serviceName>

                    When I submit the PUT request as per the <data> in payload and <header>

                    And I validate status code

                    And I validate response content

                    And I validate header parameter in response

                    Examples:
                            |serviceName|data   |header |
                            |endpoint   |payload|hr_ops |


    Scenario Outline: Verify other than HR Ops user should not be able to create a DP

           Given I want to execute service <serviceName>

            When I submit the POST request as per the <data>  and <header>in payload

            And I validate status code 401

            And I validate response content

            And I validate header parameter in response

            Examples:
                    |serviceName|data   |header         |
                    |endpoint   |payload|Station_manager|
                    |endpoint   |payload|admin|


    Scenario Outline: Verify other than Hr Ops user should not be able to modify a created DP with API request

           Given I want to execute service <serviceName>

            When I submit the PUT request as per the <data> in payload and <header>

            And I validate status code

            And I validate response content with changes provided

            And I validate header parameter in response

            Examples:
                      |serviceName|data   |header           |
                      |endpoint   |payload|station_manager  |
                      |endpoint   |payload|admin            |

    Scenario Outline: Verify user is able to deactivate a created DP with API request

            Given I want to execute service <serviceName>

            When I submit the PUT request as per the <data> in payload and <header>

            And I validate status code

            And I validate response content

            And I validate header parameter in response

                Examples:
                         |serviceName|data   |header           |
                         |endpoint   |payload|station_manager  |
                         |endpoint   |payload|admin            |