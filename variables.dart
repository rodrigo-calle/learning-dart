void main() {
  // int edad = 20;
  // double precio = 25.4;

  int codigoPostal = 123333;

  String position = "13";
  ;

  // Variables por datos dinámicos
  dynamic puntos = 2000;
  var puntos1 = "0000";
  final puntos2 = "33333";
  // Cada vez que deseemos cambiar el valor del dato debemos considerar el tipo de valor inicial

  const constante = [222, 111];

  /***
    * La diferencia entre final y constant es que
    * final: es mutable
    * const: es inmutable
    */

  //La seguridad nula
  // Al activar la seguridad nula el valor asignado a la variable no puede ser null

  // CONVERSIÓN DE TIPOS

  int edad = 22;
  double precio = 23.45;
  String stock = "100";
  bool isAvailable = true;
  // Convirtiendo precio a string

  String precioEnString = precio.toString();

  // Convirtiendo stock a int

  int stockParsed = int.parse(stock);

  // CONCATENACIÓN
  String name = "Rodrigo";
  print("Hola " + name);
  // Segunda forma de concatenación: con esta forma se puede imprimir los atributos
  print("Hola ${name}");

  // Saltos de Línea en un string
  print("Hola Bienvenido \n a mi casa");
  print('''Hola 
  Mundo.
  ''');

  //UTILIDADES DE STRING

  String myName = "The Rock";

  print(myName.isEmpty);
  print(myName.toUpperCase());
  print(name.substring(0, 3));
  print(name.length);
  print(myName.replaceAll('Rock', 'Rock - Dave J'));

  //OPERADORES

  //Comparación

  int edadMax = 30;
  int edadMin = 15;
  int edadDeUsuario = 10;

  bool puedeIngresar = edadDeUsuario > edadMin;
  print(puedeIngresar);

  // OPERADORES MATEMÁTICOS
  // Para este caso funciona igual que otros lenguajes de programación

  int a = 20;
  int b = 30;

  // residuo
  double divisionDecimal = a / b;
  int divisionEntera = a ~/ b;
  int residuoDeDivision = a % b;

  // OPERADORES DE ASIGNACIÓN
  //Declaración compuesta:
  a = a + b; // esto es igual a a+=b

  // OPERADORES LÓGICOS
  // Los operadores lógicos se manejan igual que en JS != < > ==

  // OPERADORES UNARIOS
  print(
      a++); // A esto se llama el "post incremento", regresa el valor original de a + 1
  // OPERADORES BINARIOS
  int operadorBinarip = a + b; // tiene operado operador operando
  // OPERADORES TERNARIOS
  //En el ejemplo retornaremos un valor de tipo String, bajo la condición de que si el número que pasamos es mayor a 10 regrese "si", de caso contrario "no"
  String resultado = edad > 10 ? 'si' : 'no';

  print(resultado);
}
