void main(){
  
  print(greetingMessage(name: 'Pedro', message: 'Bonne jour'));
  
}

String greetingMessage({required String name, String? message}){
  return '$message, $name';

  
}