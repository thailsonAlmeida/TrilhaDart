main(){
/*
Map é uma coleção do Dart que faz associação
chave-valor. É bastante parecido com o padrão
JSON em sua estrutura.

Um Map<K,V> é definido por chaves do tipo K e
valores do tipo V. Tanto K quanto V podem
adotar qualquer tipo de objeto contato que cada
chave seja única. Já os valores podem se
repetir.
 */

var mVazio1 = <int,String>{};
Map<String,int> mVazio2 = {};

var m1 = {
  1: 'Carlos',
  2: 'Julia',
  3: 'Maria',
  4: 'Carla',
};
var m2 = {
  'Julia' : 1993,
  'Carla' : 1994,
  'Camila' : 2003,
  'Paula' : 2003,
};
Map<int,String> m1_2 = {
  1 : 'John',
  2 : 'Leila',
  3 : 'Lanna',
  4 : 'Frederico',
};

/*
Maps também aceitam coleções como
chave e/ou valor, embora seja mais
comum encontrar coleções como valor.

Por exemplo
- Map<int,List<String>>
- Map<String,Set<String>>
- Map<int,List<Map<int,String>>>
- List<Map<int,List<Map<int,String>>>>
etc.
 */

var alunos = [
  {
    'BT301683X' : {
      'Nome' : 'Leila',
      'Situação' : 'Matriculada',
      'Ira' : 8.0,
      'Curso' : {
        'Nome' : 'Análise e Desenvolvimento de Sistemas',
        'Campus' : 'Boituva',
      }
    },
    'BT301233X' : {
      'Nome' : 'Lana',
      'Situação' : 'Matriculada',
      'Ira' : 5.0,
      'Curso' : {
        'Nome' : 'Análise e Desenvolvimento de Sistemas',
        'Campus' : 'Boituva',
      }
    },
  }
];

var alunosLista2 = 
[
  {
    'BT301685X' : {
      'Nome' : 'Leila',
      'Situção' : 'Matriculada',
      'Ira' : 8.0,
      'Curso' : {
        'Nome' : 'Análise e Desenvolvimento de Sistemas',
        'Campus' : 'Boituva',
      },
      'periodos' : [
        {
          'periodo' : 1,
          'Componentes' : [
            {
              'id' : 3021654,
              'codigo' : 'ED1D2',
              'nome' : 'Estrutra de Dados l',
              'periodo-cursado' : '2021/1',
              'frequencia' : 85,
              'conceito' : 8.5,
              'situacao' : 'Aprovado',
              'yipo-componente' : 'curricular'
            },
          ]
        },
        {
          'periodo' : 4,
          'Componentes' : [
            {
              'id' : 3021654,
              'codigo' : 'TP1D4',
              'nome' : 'Técnicas de Programação l',
              'periodo-cursado' : '2022/1',
              'frequencia' : 90,
              'conceito' : 8.5,
              'situacao' : 'Aprovado',
              'yipo-componente' : 'curricular'
            },
          ]
        },
      ]      
    },
  },
];
}

/*
Como trabalhar de forma eficiente com
tantas camadas de mapeamento?
¨forEach()
¨map()
¨asMap()
¨etc.
 */