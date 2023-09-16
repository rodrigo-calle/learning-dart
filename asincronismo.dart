void main() async {
  inicio();
  // accion()
  //     .then((value) => print(value))
  //     .whenComplete(() => print('Finalizó el future method'))
  //     .catchError((onError) => print(onError));
  try {
    String text = await accion();
    print(text);
  } catch (error) {
    print(error.toString());
  }
  fin();
}

inicio() {
  print("Inicio");
}

Future<String> accion() async {
  return Future.delayed(Duration(seconds: 4), () => "Listo");
}

fin() {
  print("Fin");
}


// Await

