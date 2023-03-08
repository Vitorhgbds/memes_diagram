Narrative:

In order to use the app features
As a elder
I want to be able to login

Scenario Outline: execute login

  Given a valid email <email>
  And a valid password <password>
  When loggin is executed
  Then result should be <result>

Examples:
|  email | password |  result |
| true | true | true |
| true | false | false |
| false | true | false |
| false | false | false |
