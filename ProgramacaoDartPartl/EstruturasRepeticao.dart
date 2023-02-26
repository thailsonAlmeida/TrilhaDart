main(){
  for (var i = 0; i < 10; i++){
    print(i);
  }

/*for-in
A estrutura for-in percorre um objeto
Iterable (lista e set) de dados atribuindo, a
cada iteração, um valor da coleção a uma
variável
 */
  var nome = 'Thailson';
  for (var codLetra in nome.runes){
    print(String.fromCharCode(codLetra));
  }
}