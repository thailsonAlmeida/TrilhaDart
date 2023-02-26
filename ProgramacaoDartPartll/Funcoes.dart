main() {
  
/*São compostas, basicamente, de
¨Tipo
¨Nome
¨Parâmetros
¨Corpo */

int dobro(int x){
  return x*2;
}

/*
Apesar de não recomendado pelo guia do Dart
(ver Effective Dart), o tipo de uma função pode
ser omitido mesmo que não seja void.

¨ Nesse caso, o tipo será dynamic e deve-se evitar
utilizar esse tipo no Dart.
 */

dobroSemTipo(int x){
  return x*2;
}

/*No parâmetro posicional. A mesma ordem de
declaração deve ser obedecida na chamada  */
void funcPosicional(int p1, String p2, double p3){

}
funcPosicional(1, "p2", 3.4);

/*
A declaração de named parameters é feita dentro de {chaves} e,
diferente dos posicionais, é validada em relação a nullables.
*/
void funcNomeadoNonNullable({int? p1, String? p2, double? p3}){ }

void funcNomeadoReq({required int p1, required String p2, required double p3}){ }

void funcNomeadoDef({int p1 = 0, String p2 = "Nada", double p3 = 0.0}){ }

funcNomeadoNonNullable(p3: 3.5, p1: 7, p2: "named");



/* 
Parâmetros nomeados e posicionais podem ser declarados juntos,
desde que sigam a seguinte regra:
  ¨ Na declaração, todos os parâmetros posicionais devem vir antes dos
nomeados.
  ¨ Na chamada, os parâmetros nomeados podem ser usados em qualquer
lugar, mesmo entre os posicionais, embora não recomendado.
*/

void funcPosNome(String nome, String cpf, bool matriculado, {DateTime? dtnasc, String? curso}){}

funcPosNome('Marcos', '451.652.365-85', true);
funcPosNome('Marcos', '451.652.365-85', true, curso: 'TDAS', dtnasc: DateTime.now() ); //ok
funcPosNome(curso: 'TDAS', dtnasc: DateTime.now(), 'Marcos', '451.652.365-85', true ); //ok
funcPosNome(curso: 'TDAS', 'Marcos', dtnasc: DateTime.now(), '451.652.365-85', true); //não recomendado

/*
Há também os parâmetros posicionais opcionais, denotados por
[colchetes] e que podem ser declarados depois dos parâmetros
obrigatórios.
  ¨ Seguem as mesmas regras de nullable dos named parameters, exceto serem
marcados como required.
  ¨ Uma função não pode ter named parameters E parâmetros opcionais. São
mutuamente exclusivos.
*/
void funcPosNomeOpc(String nome, String cpf, bool matriculado, [DateTime? dtnasc, String? curso]){

}

funcPosNomeOpc('Carla','465.698.699-45',true);
funcPosNomeOpc('Carla','465.698.699-45',true, DateTime.now(), 'TADS'); //OK
//funcPosNomeOpc('Carla','465.698.699-45',true, 'TADS', DateTime.now()); //ERRO

/*
Existem dois tipos de corpo de função
*/

  //Bloco – A função tem várias instruções
  bool todosPares(List<int> l){
    for(int val in l){
      if(val.isOdd){
        return false;
      }    
    }
    return true;
  }

  /*
  Simples – A função tem apenas uma expressão e seu resultado
  é retornado. Também chamadas de Arrow Functions. 
  */
  bool todosImpares(List<int> l) => l.every((l) => l.isOdd);

/*
Funções anônimas também são conhecidas
como lambda ou clojure e não possuem nome,
apenas parâmetros e corpo.
  - As regras de corpo de função também se aplicam
para funções anônimas.

    ([[Type] param1[, ...]]){
      codeblock;
    };

  - Os parâmetros são todos opcionais, tipálos também.
*/

/*
Exemplo de uma função anônima sem parâmetros que
só imprime uma string:
*/
(){
  print('Olá');
};

/*
Exemplo de uma função anônima que recebe dois
valores e retorna a soma deles
*/
(x, y){
  return x + y;
};

(z,a) => z+a;

/*
Mas qual a finalidade das funções
anônimas?
  ¨Elas geralmente estão associadas a funções higher-order – funções que recebem ou retornam funções por parâmetro.
    - forEach, 
          map, 
          any, 
          every 
          etc. são exemplos de funções higher-order.
*/

}