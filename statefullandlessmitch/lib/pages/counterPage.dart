import 'package:flutter/material.dart';
import 'package:statefullandlessmitch/widgets/button.dart';

class counterPage extends StatefulWidget {
  const counterPage({super.key});

  @override
  State<counterPage> createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  String displayValue = "0";
  String operand = '';
  double firstNumber = 0.0;

  void handleNumber(String value) {
    setState(
      () {
        if (displayValue == "0") {
          displayValue = value;
        } else {
          displayValue += value;
        }
      },
    );
  }

  void operation(String op) {
    setState(
      () {
        operand = op;
        firstNumber = double.parse(displayValue);
        displayValue = "0";
      },
    );
  }

  void clear() {
    setState(() {
      displayValue = "0";
      operand = "";
      firstNumber = 0.0;
    });
  }

  void calcluateResult() {
    double secondNumber = double.parse(displayValue);
    double result = 0.0;
    switch (operand) {
      case "+":
        result = firstNumber + secondNumber;
        break;
      case "-":
        result = firstNumber - secondNumber;
        break;
      case "*":
        result = firstNumber * secondNumber;
        break;
      case "/":
        result = firstNumber / secondNumber;
        break;
    }
    setState(() {
      displayValue = result.toString();
      operand = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "C A L C U L A T O R",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  displayValue,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "C",
                      onTap: () => clear(),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "7",
                      onTap: () => handleNumber("7"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "4",
                      onTap: () => handleNumber("4"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "1",
                      onTap: () => handleNumber("1"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button(
                      buttonColor: Colors.orange.shade300,
                      buttonText: "/",
                      onTap: () => operation("/"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "8",
                      onTap: () => handleNumber("8"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "5",
                      onTap: () => handleNumber("5"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "2",
                      onTap: () => handleNumber("2"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button(
                      buttonColor: Colors.orange.shade300,
                      buttonText: "0",
                      onTap: () => operation("0"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "9",
                      onTap: () => handleNumber("9"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "6",
                      onTap: () => handleNumber("6"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "3",
                      onTap: () => handleNumber("3"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button(
                      buttonColor: Colors.orange.shade300,
                      buttonText: "*",
                      onTap: () => operation("*"),
                    ),
                    Button(
                      buttonColor: Colors.orange.shade300,
                      buttonText: "-",
                      onTap: () => operation("-"),
                    ),
                    Button(
                      buttonColor: Colors.orange.shade300,
                      buttonText: "+",
                      onTap: () => operation("+"),
                    ),
                    Button(
                      buttonColor: Colors.grey.shade300,
                      buttonText: "=",
                      onTap: () => calcluateResult(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
