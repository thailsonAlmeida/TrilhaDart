main(){
/*
Os conjuntos ou set, são coleções não ordenadas com funcionamento
quase idêntico às listas, com as seguintes diferenças
¨ Set's contém apenas valores únicos;
¨ Set's são delimitados por chaves {};
¨ Um set vazio
var varSet = <int>{};
Set<int> varSet = {};

Tentar adicionar valores já existentes no set são ignorados mas não
causam erros.
 */
var setA = {1,2,3,4,5};
var setB = {3,4,5,6,7,8,9,10};
var setC = {...setA,...setB};

print(setC);
}