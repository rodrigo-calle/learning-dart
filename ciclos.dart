void main() {
  // for necesita especificar el número de ciclos que dará
  for (int j = 0; j <= 10; j++) {
    print("Tabla del ${j}");
    for (int i = 0; i <= 10; i++) {
      print("${j}*${i} = ${j * i}");
    }
  }

  String name = "La Roca";

  for (int character in name.codeUnits) {
    print(String.fromCharCode(character));
  }

  int edad = 13;

  do {
    print("Tiene ${edad}");
    ++edad; // preincrement
  } while (edad <= 18);
}
