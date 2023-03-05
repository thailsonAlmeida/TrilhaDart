/*
O que é um número de Armstrong ?

O conceito da Álgebra para um número de Armstrong diz que: 
  é um número de n dígitos que é igual a soma de cada um dos seus dígitos elevado a n-ésima potência .

Por exemplo, 153 (n = três dígitos) 
  é igual a 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

Outros exemplos são:
  370=3^3+7^3+0^3      
  371=3^3+7^3+1^3        
  407=4^3+0^3+7^3

Existem 6 números de Armstrong entre 0 e 999. Eles são: 
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 153, 370, 371, 407

Uma relação mais completa dos número de Armstrong pode ser vista abaixo:
  1, 2, 3, 4, 5, 6, 7, 8, 9, 153, 370, 371, 407, 1634, 8208, 9474, 54748, 92727, 93084, 548834, 1741725, 4210818, 9800817, 9926315, 24678050, 24678051, 88593477, 146511208, 472335975, 534494836, 912985153, 4679307774, 32164049650, 32164049651 , etc.

Existem apenas 88 números de Armstrong na base 10, dos quais o maior é :  
  115.132.219.018.763.992.565.095.597.973.971.522.401
 */
import 'dart:io';
import 'dart:math';

main(){
  var listaInputNumeroInt = [];
  var listaInputNumeroNesima = [];

  print("Digite um número inteiro para saber se é um número de Armstrong: ");
    String? inputNumero = stdin.readLineSync();

  if(inputNumero != null){ 
    int inputNumeroInt = int.parse(inputNumero);

    for(var x in inputNumero.runes){
      String inputNumeroString = String.fromCharCode(x);
      int inputNumeroIntUnidade = int.parse(inputNumeroString);
      listaInputNumeroInt.add(inputNumeroIntUnidade);      
    }


    if(listaInputNumeroInt != null)   
      for(var i=0; i<listaInputNumeroInt.length; i++){
        listaInputNumeroNesima.add(pow(listaInputNumeroInt[i], 3));
      }
    
    
    if(listaInputNumeroNesima != null) {    
      var resultadoSomaLista = listaInputNumeroNesima.reduce((x, y) => x + y);

      if(resultadoSomaLista == inputNumeroInt )
        print("$inputNumero é um número de Armstrong");
      else
        print("$inputNumero não é um número de Armstrong");
    }
  }
    
  
  

}