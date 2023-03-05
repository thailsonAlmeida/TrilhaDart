/*
Como fazer inputs no dart?
Importar: 
  import 'dart:io';

Usar a função stdin.readLineSync(). 
Vai parar a execução do programa até digitarmos algo.

Para armazenar o dado de entrada guarde-o numa variável.
  String? input = stdin.readLineSync();

A interrogação na frente da variável quer dizer que ela poderá ser nula.

Links úteis
  https://dart.dev/guides/libraries/library-tour#dartio
 */
import 'dart:io';

main(){
  print("Qual o seu nome?");
    String? inputNome = stdin.readLineSync();

  print("Prazer em conhecer $inputNome");

  print("Qual a sua idade?");
    String? inputIdade = stdin.readLineSync();

    if(inputIdade != null){
      int idade = int.parse(inputIdade);
      print("Ano que vem a sua idade será ${idade + 1} anos.");
    }

}