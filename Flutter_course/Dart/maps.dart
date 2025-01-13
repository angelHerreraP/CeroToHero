void main(){
  // los maps en dart son como los diccionarios en python, cuya funcion es almacenar 
  //datos en pares de clave-valor
  //En este caso, se esta creando un map llamado pokemon, 
  //que tiene como clave un string y como valor un string
  //Se declara con llaves {}
  final pokemon ={
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor', 'magic', 'fire'],
    'sprites': {
      1:'Ditto/front.png',
      2:'Ditto/back.png'
    }
  };
    print(pokemon);

    //El codigo del curso no funciona, ya que la nueva implementacion de Dart, pide que un map se incoepore xomo "as Map<int, String>"
    //En vez del print('Front: ${pokemon['sprites'][1]}');
    print('Front: ${(pokemon['sprites'] as Map<int, String>)[1]}');


  }

