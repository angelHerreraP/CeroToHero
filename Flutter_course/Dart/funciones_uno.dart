void main(){
  
  
  //El return solo nos va a dar "algo" sin embargo no lo va a mostrar hasta que se ejecute un print, caso contrario que si la funcion retorna un "print"
  
  //Como esta en return, este print ayuda a mostrar el rerutn
  print(greetEveryone());
  
  //Esto imprime 30
  print('Suma: ${addTwoNumbers(10,20)}');
  print('Suma: ${addRowTry(10,20)}');
  print('Suma Opcional: ${addTwoNumbersOptional(10)}');
  
  //Al si imprimir algo, se llama solo la funcion y ella ya hace su jale
  hola();
  
}

//Manera 1 de declarar funciones
String greetEveryone(){
  return 'Hello Everyone';
}

//Manera "Funciones de Flecha de declarar"
//String greetEveryone => 'Hello Everyone';


// ESta funcion es de tipo entero
int addTwoNumbers (a,b){
  return a+b;
}


//Tarea:
int addRowTry(a,b) => a+b;

//En caso de valores opcionales:
//Si no quieres preocuparte porque sumen un valor o si se les olvida, sumas en autoomatico: [int b = 0]
int addTwoNumbersOptional (a,[int b = 0]){
  //Esto es un if, basicamente dice si no sabes que es b o no lo dan intuye que es 5
  //Puedes hacer tambien estob ??= 5;
  return a+b;
}

//Esto es el caso de una funcion que es void, no envia nada a ningun lugar, pero ejecuta algo
void hola(){
  print('Holi');
}