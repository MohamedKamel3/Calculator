import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                output == '' ? "0" : output,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output = '';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("C"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output = output.substring(0, output.length - 1);
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("<-"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '%';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("%"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '/';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("/"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '7';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("7"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '8';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("8"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '9';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("9"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '*';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("*"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '4';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("4"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '5';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("5"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '6';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("6"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '-';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("-"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '1';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("1"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '2';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("2"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '3';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("3"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '+';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("+"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += '0';
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("0"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (output == '' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '*' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '%') {
                      } else {
                        output += '.';
                      }
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("."),
                ),
                IconButton(
                  onPressed: () {
                    Parser p = Parser();
                    Expression exp = p.parse(output);
                    num result =
                        exp.evaluate(EvaluationType.REAL, ContextModel());

                    setState(() {
                      output = result.toString();
                    });
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.amber,
                    minimumSize: Size(140, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Text("="),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
