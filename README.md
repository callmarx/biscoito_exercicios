# Biscoito ou bolacha?
Lista de exercícios em Ruby para ajudar minhas amigas a ser tornarem desenvolvedores <3

# Introdução

## Configuação e testes
Ao clonar esse projeto certifique-se que tenha instalado o Ruby versão superior ou igual 2.5.
Para instalar as dependências (no caso é apenas uma gema), execute o seguinte comando em seu
terminal:
```
bundle install
```
**OBS:** Os comandos no terminal são sempre dentro da pasta do projeto.

Caso não tenha o Bundler instalado, basta executar ```gem install bundler``` e depois comando acima.

A resolução de cada exercício devem ser feito no respectivo seu arquivo dentro da pasta ```src```.
Os testes já estão implementados sob a gema [RSpec](https://github.com/rspec/rspec), para rodar
esses testes bastando executar em seu terminal:
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

Crie um repositório público em seu github (no seu login do https://github.com/), preferencialmente
com o mesmo nome **biscoito_exercicios**. Feito isso adicione esse seu repositório como um segundo
repositório remoto para o projeto com o comando a seguir, onde *seu_endereço_git* corresponde ao
seu login do git:
```
git remote add mygit https://github.com/seu_endereço_git/biscoito_exercicios
```
Repetindo o comando anterior você deve obter:
```
git remote -v
mygit https://github.com/seu_endereço_git/biscoito_exercicios.git (fetch)
mygit https://github.com/seu_endereço_git/biscoito_exercicios.git (push)
origin https://github.com/callmarx/biscoito_exercicios.git (fetch)
origin https://github.com/callmarx/biscoito_exercicios.git (push)
```
Feito isso, sempre que você fizer um commit (seja para uma solução de um exercício, uma correção ou
o que você quiser commitar), para enviar ao seu repositório (do popular "dar um push") utilize:
```
git push -u mygit master
```

Caso eu faça atualizações nesta lista, como incluir novos exercícios ou mesmo correções minhas,
para você pegar essas atualizações (do popular "dar um pull") utilize:
```
git pull origin master
```
Com esse comando você irá se deparar com uma abertura do ```vim``` (editor de textos no terminal),
avisando que será necessário fazer um **merge** na branch. Isso ocorre pois a branch do seu
repositório e a branch do meu são a mesma - a **branch master**, porém a sua branch master contém tudo
que eu fiz anteriormente (enunciado e testes) **mais** a sua solução, logo nossas branchs são
diferentes e por isso será necessario "misturar" elas, por isso o **merge**. Mas não se preocupe,
esse arquivo do ```vim``` provavelmente virá apenas com os comentários, somente avisando sobre o
merge, bastando sair com o comando ```ESC + :q```, isso pois editamos arquivos separados do
projeto: vocês mexem na pasta ```./src``` e eu no README.md e na pasta ```./spec```. Caso vocês
editem um mesmo arquivo que eu editei, aí será necessário fazer um merge (caso queiram ir mais a
fundo sobre essa poderosa ferramenta que é o git)

### Lembrete: Não quebre a cabeça com isso
Isso de utilizar múltiplos repositórios remotos é apenas uma **sugestão**, o foco é vocês
entenderem o Ruby e progredirem no desenvolvimento. No começo, eu confesso, que achei o git um
bicho de 7 cabeças, mas fui entendo conforme o uso e necessidade. Você podem por simplesmente
copiar os arquivos deste meu repositório (e também conforme eu for atualizando) e trabalhar somente
com seu próprio repositório.

# Exercícios
Os exercícios a seguir foram plagiados ou modificados das seguintes fontes:
- https://exercism.io/tracks/ruby

## 1 - Matriz
Criar uma classe de nome **Matrix** que representa uma matriz de números. O objeto instanciado por
ela deve poder retornar as linhas e colunas da matriz.

A inicialização da classe deve ser feita via *string*, da qual cada linha representará as linhas da
matriz e os elementos separados por espaço.

Exemplo:
```ruby
matrix = Matrix.new("9 8 7\n5 3 2\n6 6 7")

## IMPORTANTE:
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

Para rodar os testes execute:
```
rspec ./spec/ex1_spec.rb
```

## 2 - Grãos
Enredo:
> Era uma vez um sábio servo que salvou a vida de um príncipe. Seu rei então prometeu pagar tudo o
> que o servo pudesse imaginar. Sabendo que o rei amava o xadrez, o servo disse que gostaria de
> receber em grãos de trigo baseado no tabuleiro do jogo: um grão no primeiro quadrado do tabuleiro,
> dois grãos no próximo, quatro na terceira, e assim por diante.

Calcule o número de grãos de trigo em um tabuleiro de xadrez, uma vez que o número em cada quadrado
dobra.

Existem 64 quadrados em um tabuleiro de xadrez.

Escreva um código de um módulo de nome **Grains**. Ele deve mostrar:
- quantos grãos haverá em cada quadrado (considerar os erros)
  ```ruby
  ## Exemplos:
  Grains.square(1)
  # => 1
  Grains.square(4)
  # => 8

  ## Lembre-se que o tabuleiro vai da casa 1 à 64, logo os seguintes exemplos dão erro:
  Grains.square(0)
  # => ArgumentError:
  #     Some error message
  Grains.square(65)
  # => ArgumentError:
  #     Some error message
  ```
- o número total de grãos
  ```ruby
  Grains.total
  => 9223372036854775808
  ```

Para rodar os testes execute:
```
rspec ./spec/ex2_spec.rb
```

### Bônus
Você passou nos testes e o seu código está limpo (claro e objetivo)? Escreva uma nova versão afim
de: Otimizar a velocidade de execução.

Ou seja, essa nova versão deve obter a quantidade de grãos de uma casa do tabuleiro mais rápido que
a anterior.

Implemente este bônus no mesmo arquivo com módulo de nome **GrainsBonus**, <u>mantendo</u> o módulo
anterior, pois os testes irão comparar o tempo de execução entre ambas versões.

Para rodar os testes execute:
```
rspec ./spec/ex2_bonus_spec.rb
```

Em seguida, compartilhe suas ideias em seu commit. Essa experiência melhorou o código? Piorou?
Você aprendeu alguma coisa com isso?
