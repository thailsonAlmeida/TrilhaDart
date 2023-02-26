main() {
/* será inicializada posteriormente */  
  late String nome = "Thais";           
/* é definida em tempo de compilação */
  const String cpf = "653.365.365-47";  
/* definida apenas uma vez e imutável.*/
  final int idade = 27;                 

/* Define o tipo da variável de acordo com sua inicialização;*/
  var Sobrenome = "Almeida";            

  /* O tipo da variável é alterado de acordo com o seu valor*/
  dynamic telefone = 15998161378;       
  telefone = "15998161311";

/*Strings e números constantes podem ser
inicializados com outras variáveis desde
que essas também sejam constantes*/
  const int a = 5;
  const int b = a * 5;

/*Há algumas versões do Dart, a possibilidade de uma
variável ser nula ou não tem sido muito trabalhada. */
  int? x1 = null;

/*STRING */
String str1 = 'String aspas simples ';
String str2 = "String aspas duplas ";

String str1e2 = str1 + str2;

String multi = ''' Funciona também 
com várias linhas 
usando aspas simples 
ou duplas ''';

String raw = r"Com um r (de raw) na frente, caracteres como \n, \t etc... não funcionam";

/*O Dart permite a interpolação de variáveis
e expressões em strings. Para isso, utilize
o símbolo $var antes de uma variável ou
${expressão} caso vá exibir o resultado
de uma expressão ou método. */

String str3 = 'SOMA';

int y = 7;

String interpol = 'O valor da ${str3.toLowerCase()} entre $y e 10 é ${y + 10}';

}