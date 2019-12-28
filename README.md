# Biscoito ou bolacha?
Lista de exercícios em Ruby para ajudar minhas amigas a ser tornarem desenvolvedores <3

# Introdução

## Configuação e testes
Ao clonar esse projeto certifique-se que tenha instalado o Ruby versão superior ou igual 2.5.
Para instalar as dependências (no caso é apenas uma gema), execute o seguinte comando:
```
bundle install
```
Caso não tenha o Bundler instalado, basta executar ```gem install bundler``` e depois comando acima.



A resolução de cada exercicio devem ser feito no respectivo arquivo dentro da pasta ```src```. Os
testes já estão implementados sob a gema [RSpec](https://github.com/rspec/rspec), para rodar esses
testes bastando executar em seu terminal (dentro da pasta do projeto):
```
rspec ./spec/ex1_spec.rb
```
No caso serão executados todos os teste para o Exercício 1, bastando alterar o nome do arquivo para
rodar os testes de outros exercícios (```./spec/ex2_spec.rb``` para o Exercício 2,
 ```./spec/ex3_spec.rb``` para o Exercício 3, assim em diante). 

## Seu git e meu git
Para sofisticar um pouco mais as coisas e avançar os conhecimentos em git, proponho o seguinte:
Trabalharmos com múltiplas branchs e repositórios remotos.

Ao clonar esse projeto você ficará com o meu endereço do github como seu repositorio externo.
Verifique isso com o comando dentro da pasta do projeto ```git remote -v```, do qual deve obter:
```
git remote -v
origin	https://github.com/callmarx/biscoito_exercicios.git (fetch)
origin	https://github.com/callmarx/biscoito_exercicios.git (push)
```
!!!!continuar!!!!

# Exercícios
Os exercícios a seguir foram plagiados ou modificados das seguintes fontes:
- https://exercism.io/tracks/ruby

## 1 - Matriz
Criar uma classe de nome *Matrix* que representa uma matriz de números. O objeto instanciado por
ela deve poder retornar as linhas e colunas da matriz.

A inicialização da classe deve ser feita via string, da qual cada linha representará as linhas da
matriz e os elementos separados por espaços.

Exemplo:
```ruby
matrix = Matrix.new("9 8 7\n5 3 2\n6 6 7")

#IMPORTANTE:
# O exemplo abaixo não funciona!!!
# É preciso explicitar a quebra de linha com '\n'
matrix = Matrix.new("
9 8 7
5 3 2
6 6 7")
```

Ira gerar a seguinte matriz (internamente no objeto)

```text
    0  1  2
  |---------
0 | 9  8  7
1 | 5  3  2
2 | 6  6  7
```

Lembrando que as linhas dessa matriz são (na ordem):

- 9, 8, 7
- 5, 3, 2
- 6, 6, 7

E as colunas:

- 9, 5, 6
- 8, 3, 6
- 7, 2, 7

Seu código deve ter os seguintes métodos:
- ```.rows``` Lista das linhas
  ```ruby
  # Saída esperada com o exemplo
  matix.rows
  => [[9, 8, 7], [5, 3, 2], [6, 6, 7]]
  ```
- ```.columns``` Lista das colunas
  ```ruby
  # Saída esperada com o exemplo
  matix.columns
  => => [[9, 5, 6], [8, 3, 6], [7, 2, 7]]
  ```

Esses métodos também devem poder retornar a posição específica de uma linha.
```ruby
# Retorna a segunda linha
matrix.row[1]
# => [5, 3, 2]

# Retorna a primeira coluna:
matrix.columns[0]
# => [9, 5, 6]
```
