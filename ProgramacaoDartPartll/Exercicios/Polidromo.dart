/* 
Faça um programa em Dart que define se
uma palavra atribuída a uma variável do
tipo String é palíndromo.
 */

/*
Os caracteres podem ser acessados
como em uma lista.
 */


/**POLIDROMO
  Quando uma palavra é políndromo?
    Quando possui o mesmo significado lendo da direita para a esquerda, da esquerda para a direita
  Quais são os exemplos de palavras polindromo?
    Ama
    Osso
    Arara
    Radar
    Reviver
  Como saber se é polindro?
    VERSÃO 01
      Comparar os caracteres das bordas para o meio
    VERSÃO 02
      Fazer uma cópia invertida da string
 */

/**********************************************************************/

void main() {
  
  const String palavra = "roma";  
  var palavraInvertida = palavra.split('').reversed.join();   
  print("A Palavra é: $palavraInvertida");
  
  
    if(palavra == palavraInvertida){
      print("É Polidromo");
    }
    else{
      print("Não é polidromo");
    }
       
  
}



/*
Pesquise sobre números de Armstrong
em base 10.
 */
/*
Faça um programa em Dart que lê um
número inteiro positivo do usuário e define
se o número lido é um número de
Armstrong.
 */