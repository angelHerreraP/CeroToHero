main() {
  //Final lo que va a hacer es que una vez que se establece, no se cambia hasta que se detiene el programa
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  //Los lists se declaran con corchetes []
  final List<String> abilities = ['impostor', 'magic', 'fire'];
  final List<String> sprites = ['Ditto/front.png', 'Ditto/back.png'];

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);

  //Dynamic, permite cambias y empieza siendo nulo
  //El preliugro de usarlo, es que nos quita el null safety, asi como permite CUALQUIER tipo de dato 

  dynamic errorMessage = 'Error 404';
  errorMessage = 404;
  errorMessage = 'Error 500';
  errorMessage = true;


  print("""
  $errorMessage;

""");
}
