void main() {
  // Esta funcion regresará si un estudiante aprueba el examen o no, acorde a su nota

  int calificacionDeAlumno = 18;
  const int calificacionExcelente = 18;
  const int calificacionMinima = 13;

  // IF, IF ELSE, ELSE
  if (calificacionExcelente >= calificacionExcelente) {
    print("Excelente");
  } else if (calificacionDeAlumno > calificacionMinima) {
    print("Pasaste");
  } else {
    print("No pasaste");
  }

  // SWITCH

  switch (calificacionDeAlumno) {
    case >= calificacionExcelente:
      print("Excelente");
      break;
    case > calificacionMinima:
      print('Pasaste');
      break;
    default:
      print("No pasaste");
  }
}
