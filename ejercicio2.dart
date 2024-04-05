import 'dart:math';

class Calculadora {
  double suma(double a, double b) {
    return a + b;
  }

  double resta(double a, double b) {
    return a - b;
  }

  double multiplicacion(double a, double b) {
    return a * b;
  }

  double division(double a, double b) {
    return a / b;
  }
}

mixin OperacionesAdicionales {
  double potencia(double base, double exponente) {
    return pow(base, exponente) as double;
  }
}

mixin OperacionesAvanzadas {
  double raizCuadrada(double numero) {
    return sqrt(numero);
  }
}

class CalculadoraAvanzada extends Calculadora
    with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  var calculadora = CalculadoraAvanzada();
  print('Suma: ${calculadora.suma(6, 2)}');
  print('Resta: ${calculadora.resta(6, 2)}');
  print('Multiplicación: ${calculadora.multiplicacion(6, 2)}');
  print('División: ${calculadora.division(6, 2)}');
  print('Potencia: ${calculadora.potencia(6, 2)}');
  print('Raíz cuadrada: ${calculadora.raizCuadrada(25)}');
}
