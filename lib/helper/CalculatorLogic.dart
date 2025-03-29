class CalculatorLogic {
  String exp = "";
  List<String> history = [];
  double num1 = 0;
  double num2 = 0;
  String op = "";

  String formatNumber(double value) {
    return value % 1 == 0 ? value.toInt().toString() : value.toString();
  }

  void numClick(String btnText) {
    if (btnText == "AC") {
      exp = "";
      history.clear();
      num1 = 0;
      num2 = 0;
      op = "";
    } else if (btnText == "C") {
      exp = "";
    } else if (["+", "-", "/", "*", "%"].contains(btnText)) {
      if (exp.isNotEmpty) {
        num1 = double.parse(exp);
        op = btnText;
        exp = "";
        history.add("${formatNumber(num1)} $op");
      }
    } else if (btnText == ".") {
      if (!exp.contains(".")) {
        exp += btnText;
      }
    } else if (btnText == "=") {
      if (exp.isNotEmpty && op.isNotEmpty) {
        num2 = double.parse(exp);
        double result;
        switch (op) {
          case "+": result = num1 + num2; break;
          case "-": result = num1 - num2; break;
          case "*": result = num1 * num2; break;
          case "/": result = (num2 == 0) ? double.nan : num1 / num2; break;
          case "%": result = num1 % num2; break;
          default: result = 0;
        }
        if (!result.isNaN) {
          history.add("${formatNumber(num1)} $op ${formatNumber(num2)} = ${formatNumber(result)}");
        } else {
          history.add("Error: Division by Zero");
        }
        exp = result.isNaN ? "Error" : formatNumber(result);
        op = "";
      }
    } else {
      exp += btnText;
    }
  }
}
