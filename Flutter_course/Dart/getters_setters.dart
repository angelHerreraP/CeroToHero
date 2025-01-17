void main() {
  //llamamos a la clase y creamos el objeto
  final mySquare = Square(side: 10); 
  
  //
  mySquare.side = 5;
  
  //Imprimimos el objeto
  print('area: ${mySquare.area}');
  
  
}


class Square{
  //El _ convierte a privada esta propiedad
  double _side;
  
  //Constructor
  Square({ required double side})
    : _side = side;
  
  //propiedad que se hara privada (getter)
   double get area{
    return _side * _side;
  }
  
  // setter
  set side(double value){
    print('set new value: $value');
    if(value < 0) throw 'Value must be gratter than 0';
    _side = value;
    
  }
  
  //Metodo
  double calculateArea(){
    return _side * _side;
  }
  
}