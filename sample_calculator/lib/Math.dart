import 'dart:ffi';
import 'dart:math';

class Math {
  static final double _precision = 11;
  static final double PI = 3.1415926535;

  static double Pow(double number, double power) {
    var result = 1.0;
    if (power == 0) return result;

    for (var p = 0; p < power; p++) {
      result *= number;
    }

    return result;
  }

  static double Sin(double degrees) {
    var result = 0.0;
    var radian = degrees * PI / 180;

    for (double? i = 0; i! < _precision; i++) {
      double? exponent = (2 * i) + 1;
      double? num = Pow(radian, exponent);
      double? denominator = factorial(exponent);
      result += ((num * Pow(-1, i)) / denominator);
    }

    return result;
  }

  static double factorial(double number) {
    if (number == 1) return 1;

    return number * factorial(number - 1);
  }

  static void MyFunc1() {
    print('Christian');
  }

  static double square_root(double number) {
    if (number == 1 || number == 0) return number;
    return sqrt(number);
  }

  static void MyFunc2() {
    print("Neil");
  }
}
