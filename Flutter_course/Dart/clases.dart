void main(){
  final Hero Wolverine = Hero ('Logan', 'Regeneracion');
  print(Wolverine);
  print(Wolverine.name);
  print(Wolverine.power);

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
