void main() {
  double celsius= 25.0; 
  double fahrenheit = 77.0; 

  double celsiusToFahrenheit = celsiusConversion(celsius);
  print('$celsius°C is equal to $celsiusToFahrenheit°F');

  double fahrenheitToCelsius = celsiusConversion(fahrenheit);
  print('$fahrenheit°F is equal to $fahrenheitToCelsius°C');
}

double celsiusConversion(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitConversion(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}
