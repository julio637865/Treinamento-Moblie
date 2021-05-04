#language: pt

Funcionalidade: Inputs

@radio
Cenario: Radio button

Dado que eu acesso a tela Botões de radio 
Quando eu escolho a opção ruby 
Então esta opção ruby deve ser marcada 

@checkbox
Cenario: Checkbox

Dado que eu acesso a tela de Checkbox 
Quando eu marco a opção Ruby 
Então esta opção deve estar marcada 

@checkbox2
Cenario: todas as tags que usam appium 

Dado que eu acesso a tela de Checkbox 
Quando eu marco a seguintes techs:
| tech  | 
| Ruby  |
| Java  |
| Python    |
| Javascript|
| C#            |
| Robot Framework |

Então esta todas essas opções devem estar marcadas