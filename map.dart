void main() {
  Map<String, String> datos = {"nombre": "Pedro", "apellido": "Navajas"};

  datos["email"] = "pedro@gmail.com";
  print(datos["email"]);

  //RECORRIENDO UN MAP

  for (String key in datos.keys) {
    print("Key: $key Valor : ${datos[key]}");
  }

  for (String value in datos.values) {
    print("Key: $value Valor : ${datos[value]}");
  }

  datos.forEach((key, value) => print("Key: ${key}, Value: ${value}"));
}
