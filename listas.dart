void main() {
  List<String> colores = ["Azul", "Rosa", "Verde", "Morado"];

  // Index corresponde a la posición de cada elemento de la lista
  int index = 1;

  // MÉTODOS DE UNA LISTA

  // Obtener elementos
  print(colores[index]); // recupera la posición 1 de la lista: "Rosa"

  // Eliminar elementos
  colores.remove(index); // elimina el elemento de la posición 1

  // Agregar elementos

  colores.add('Negro');

  // Creación de sublistas

  colores.sublist(0, 3);
  

  //RECORRIENDO UNA LISTA

  for (int i = 0; i <= colores.length - 1; i++) {
    print(colores[i]);
  }

  for (String color in colores) {
    print(color);
  }

  colores.forEach((color) => print(color));
}
