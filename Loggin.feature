Narrative:

In order to use the app features
As a elder
I want to be able to login

Scenario Outline: execute login

Given a user`s account:
  | cpf           | password |
  | 39970192078   | abc123   |
When loggin is executed using <cpf> and <password>
Then result should be <result>

Examples:
| cpf         | password  | result                    | 
| null        | null      | CPF e/ou senha invalidos. |
| 1111        | null      | CPF e/ou senha invalidos. |
| null        | 1111      | CPF e/ou senha invalidos. |
| 39970192078 | null      | CPF e/ou senha invalidos. |
| null        | abc123    | CPF e/ou senha invalidos. |
| 39970192078 | acd3      | CPF e/ou senha invalidos. |
| 39970192078 | abc123    | user receive jwt token    |
