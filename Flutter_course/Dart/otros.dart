void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,9,10,10,10];
  
  print('Lista: ${numbers}');
  print('Length: ${numbers.length}');
  print('First: ${numbers[0]}');
  print('First: ${numbers.first}');
  //esto en automativco convierte todo en un iterable
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  
  print('Iterable: ${reversedNumbers}');
  // La manera enla que se imprime algo, es como nos damos cuenta el tipo de dato
  print('Back To List: ${reversedNumbers.toList()}');
  //Set, este no repite valores y los elimina de ser necesarios
  final setNumbers =  reversedNumbers.toSet();
  print('Tipo Set: ${setNumbers}');
  print('Length Set: ${setNumbers.length}');
  
  //vamos a jiugar con los metodos
  final greaterThanFive = numbers.where((num){
    return num > 5;
  });

  print('>5 ${greaterThanFive.toSet()}');
  
  //Intentando jugar con iterables
  final iterablesGreaters = setNumbers.where((reversed){
    return reversed>5;
    
  });

  print('set>5 $iterablesGreaters');
  
  //Spoiler, si puedes usar Where con set e Iterables
  
}


