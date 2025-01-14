void main(){

  //Ejemplo Heroe
  final Hero Wolverine = Hero ('Logan', 'Regeneracion');
  print(Wolverine);
  print(Wolverine.name);
  print(Wolverine.power);

  //Ejemplo Villano
  //En comparacion de arriba con el Heroe, 
  //aqui se puede ver que se puede cambiar el orden de los argumentos
  final Villano Thanos = Villano(name: 'Thanos', power: 'Infinity Gauntlet');
  print(Thanos);
  print(Thanos.name);
  print(Thanos.power);


  //Ejemplo Citizen
  final Citizen citizen = Citizen(
    name: 'Pedro', 
    lastName: 'Perez', 
    isAlive: false
    );

  print(citizen);


//Ejemplo de JSON que no  se usa porque es repetitivo

final Map<String, dynamic> rawJson = {
'name': 'Pedro',
'lastName': 'Perez',
'isAlive': false
};

// La manera correcta
final humano_uno = Citizen.fromJson(rawJson);
}

class Hero{
  String name;
  String power;
  
  //Contructores, opcion 1:
  Hero(this.name, this.power);
  
  //Constructores opcion comun:
  //Hero(String pName, String pPower)
  // : name=pName,
  //    power=pPower;
 
}


//Aqui van los argumentos oopcionales
class Villano {
  String name;
  String power;

  Villano({
    required this.name, 
    required this.power
    });

    //Aquo usamos el @overide
    @override
    String toString(){
      return 'Villano llamado $name, cuyo poder es $power';
    }

}


class Citizen{
  String name;
  String lastName;
  bool isAlive = true;

  Citizen({
    required this.name, 
    required this.lastName,
    this.isAlive = true
  });

  Citizen.fromJson (Map<String, dynamic> json)
  // Siempre usa los ?? porque si no encuentra nada, no se rompe el programa
  : name = json['name'] ?? 'No name',
    lastName = json['lastName'] ??  'No last name',
    isAlive = json['isAlive'] ?? 'He is dead untill we found another thing';

  @override
  String toString(){

    // ${isAlive ? 'ITS ALIVE': 'ITS DEAD :C'} es un operador ternario que 
    //se puede usar en dart y hace lo mismo que un if else, el ? es true 
    //y el : es false
    return 'Citizen called $name, whose last name is $lastName and ${isAlive ? 'ITS ALIVE': 'ITS DEAD :C'}';
  }


}

