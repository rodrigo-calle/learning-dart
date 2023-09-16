void main() {
  // Alumno rodrigo = Alumno(
  //     nombre: "Rodrigo",
  //     apellido: "Calle",
  //     edad: 25,
  //     calificaciones: [15.7, 20, 09],
  //     telefono: "999999999");

  // Alumno pedro = Alumno(
  //     nombre: "Pedro",
  //     apellido: "Navajas",
  //     edad: 18,
  //     calificaciones: [7, 17, 20, 09],
  //     telefono: "999999999");

  Alumno rodrigo = Alumno();
  rodrigo.setNombre = "Rodrigo";
  rodrigo.setCalificaciones = [10.2, 16.3, 13.0];

  Profesor pedro = Profesor();
  pedro.setNombre = 'Pedro';
  pedro.setRfc = '1111';

  print(rodrigo.obtenerPromedio());
  print(pedro.tieneRfc());
}

//  Clases Abstractas: son clases que no se debe instaciar solo para clases base
abstract class Persona implements Escuela {
  String _nombre = "";
  String _apellido = "";
  int _edad = 0;
  String _telefono = "";

  get getNombre => _nombre;
  set setNombre(String nombre) => this._nombre = nombre;
}

class Alumno extends Persona {
  List<double> _calificaciones = const [];

  // Alumno(this.nombre, this.apellido, this.edad, this.telefono, this.calificaciones)

  get getCalificaciones => _calificaciones;
  set setCalificaciones(List<double> calificaciones) =>
      _calificaciones = calificaciones;

  // Alumno(
  //     {this.nombre = "",
  //     this.apellido = "",
  //     this.edad = 0,
  //     this.telefono = "",
  //     this.calificaciones = const []});

  obtenerPromedio() {
    print("El promedio del alumno es ${_calcularPromedio()}");
  }

  //Métodos privados
  _calcularPromedio() {
    return this._calificaciones.reduce((value, element) => value + element) /
        _calificaciones.length;
  }

  @override
  bienvenida() {
    print("Bienvenido alumno $this.nombre");
  }
}

//HERENCIA
class Profesor extends Persona with Validaciones {
  String _rfc = "";
  // Alumno(this.nombre, this.apellido, this.edad, this.telefono, this.calificaciones)
  get getNombre => _nombre;
  set setNombre(String nombre) => _nombre = nombre;

  get getRfc => _rfc;
  set setRfc(String rfc) => this._rfc = rfc;

  // Alumno(
  //     {this.nombre = "",
  //     this.apellido = "",
  //     this.edad = 0,
  //     this.telefono = "",
  //     this.calificaciones = const []});

  tieneRfc() {
    if (_rfc.isNotEmpty) {
      print("El profesor $_nombre tiene RFC");
    } else {
      print("El profesor no tiene RFC");
    }
    validarRFCHomoClave(this._rfc);
  }

  @override
  bienvenida() {
    print("Bienvenido profesor $this.nombre");
  }

  //Métodos privados
  // _calcularPromedio() {
  //   return this._calificaciones.reduce((value, element) => value + element) /
  //       _calificaciones.length;
  // }
}

//INTERFACES: Estructura que hace cumplir ciertas propiedades de una clase

class Escuela {
  // Este método debe ser reescrito en las clases donde fué implementada a excepción de una clase abstracta
  bienvenida() {}
}

//MIXIN

mixin Validaciones {
  validarRFCHomoClave(String rfc) {
    if (rfc.length > 10) {
      print("RFC con homoclave");
    } else {
      print("RFC sin homoclave");
    }
  }
}
