void main() {
  // int descuento = 50;
  // int precio = 1456;
  // print("bienvenido Rodrigo");

  // double aplicarDescuento = (precio * descuento) / 100;
  // double precioTotal = precio - aplicarDescuento;
  bienvenida("Rodrigo", "top");
}

double obtenerDescuento(int descuento) {
  int precio = 1456;
  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;
  return precioTotal;
}

bienvenida(String nombre, String tipo) {
  print("Hola $nombre por ser un alumno $tipo tienes un: ");

  switch (tipo) {
    case "nuevo":
      print("Descuento de 50% ${obtenerDescuento(50)}");
      break;
    case "Antiguo":
      print("Descuento de 60% ${obtenerDescuento(60)}");
      break;
    case "top":
      print("Descuento de 70% ${obtenerDescuento(70)}");
      break;
    default:
      print("No se encontró el tipo de usuario");
  }
}

//Tipos de parametro

// Opcional: siempre va despues de los parametros opcionales y se escripbre asi: [tipo nombreDeParamentro] => [int monto]
