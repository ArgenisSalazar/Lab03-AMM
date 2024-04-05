class Empleado {
  String? nombre;
  String? apellido;
  double? salario;
  int? horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    return salario * 0.1;
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(
      String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  var empleados = [
    EmpleadoConBonificaciones('Argenis', 'Salazar', 2540.5, 40),
    EmpleadoConBonificaciones('Paolo', 'Sihuay', 3450.5, 45),
    EmpleadoConBonificaciones('Carlos', 'Sanchez', 1687.4, 35),
  ];

  for (var empleado in empleados) {
    var bonificacion = empleado.calcularBonificacion(empleado.salario!);
    print(
        '${empleado.nombre} ${empleado.apellido} recibe una bonificación de \$${bonificacion}');
  }
}
