main(){
/*
Listas são coleções de objetos de determinado tipo T.

No Dart, List é um tipo genérico que implementa Iterable<T>.

Listas são delimitadas da mesma forma do Python e do
Javascript (Arrays), com colchetes:
à var lst = ['Isso', 'é', 'uma', 'lista'];

O acesso a uma posição da lista é feito da mesma forma que
nas linguagens supracitadas:
à print(lst[3]);

Principais propriedades
¨first
¨isEmpty
¨isNotEmpty
¨iterator
¨last
¨length

Principais métodos
¨ add | addAll | insert | insertAll | setAll
¨ any | every
¨ join
¨ asMap | map | toSet | toList
¨ clear
¨ contains | elementAt | indexOf | lastIndexOf
¨ where | firstWhere | lastWhere | indexWhere
¨ remove | removeAt | removeLast | removeRange | removeWhere
¨ sort
¨ forEach
 */
/*
¨ Iterar de 1 a 100 e adicionar ímpares em uma lista e
pares em outra. 
*/
List impares = [];
List pares = [];

for (int i = 1; i < 100; i++) {
  if (i % 2 == 0){
    pares.add(i);
  } else {
    impares.add(i);
  }
}

print(impares);
print(pares);

/*
Como as listas poderiam ser definidas
também?
¨ List<int> impares = []
¨ var impares = []
¨ var impares = <int>[]
¨ var impares = const [1, 3, 5]
*/

/*
Qual a diferença dos quatro tipos de
declaração?
¨ List w = []
¨ var x = []
¨ List<int> y = []
¨ var z = <int>[]
 */

/*
Existem operações especiais que podem ser
feitas em coleções.

for, if e else podem ser inseridos dentro de
listas. São chamados de collection for e
collection if
 */

List<int> imp = [for (int i = 1; i <= 100; i += 2) i ];
List<int> par = [for (int i = 2; i <= 100; i += 2) i ];

print("collection for: ");
print(imp);
print(par);

/*
Existe um operador chamado spread. Ele funciona de
forma a referenciar os valores de uma coleção inteira.
Sintaxe:
¨ ...nomeColeção

Dada uma lista var lstDados = ['a','b','c'], podemos
criar uma segunda lista reaproveitando a primeira e
terceira lista aproveitando a segunda:
¨ var lstDados2 = [...lstDados, 'd', 'e'];
¨ var lstDados3 = ['x','y','z',...lstDados2,'f','g'];

O spread operator é uma alternativa menos
verbosa para a concatenação de listas. Por
exemplo:
 */

var listaX = ['é','uma','lista'];
var listaY = ['resultante','de','uma'];
var listaZ = ['Esta',...listaX,...listaY,'concatenação.'];
print(listaZ);
}