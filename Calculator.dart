import 'dart:io';

class Calculator {
  // Constructor
  Calculator();

  // Methods for mathematical operations
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    return a / b;
  }

  // Recursive factorial function
  int factorial(int n) {
    if (n == 0) {
      return 1;
    }
    return n * factorial(n - 1);
  }
}

void main() {
  Calculator calculator = Calculator();

  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;

  double result;
  switch (operation) {
    case '+':
      result = calculator.add(num1, num2);
      break;
    case '-':
      result = calculator.subtract(num1, num2);
      break;
    case '*':
      result = calculator.multiply(num1, num2);
      break;
    case '/':
      result = calculator.divide(num1, num2);
      break;
    default:
      print('Invalid operation');
      return;
  }

  print('Result: $result');

  // Recursive factorial calculation
  print('Enter a number to calculate its factorial:');
  int factorialNum = int.parse(stdin.readLineSync()!);
  int factorialResult = calculator.factorial(factorialNum);
  print('Factorial of $factorialNum is $factorialResult');
}
