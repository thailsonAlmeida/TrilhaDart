main() {

/*if-else*/
  int mediaFinal = 7;

  if (mediaFinal >= 6){
    print("Aprovado(a)");
  } else if (mediaFinal >= 4){
    print("Instrumento Final de Avaliação");
  } else {
    print("Reprovado(a)");
  }

/*switch-case*/
String estado = "APROVADO";

switch(estado){
  case "APROVADO":
    print("Parabéns, prossiga");
    break;
  case "IFA":
    print("O IFA será dia XX/YY");
    break;
  case "REPROVADO":
    print("Tente novamente.");    
    break;
  default:
    print("Estado desconhecido.");
    break;
}
}