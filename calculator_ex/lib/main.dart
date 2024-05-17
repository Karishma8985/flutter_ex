import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _history = '';

  void _calculate(String value) {
    setState(() {
      if (value == 'C') {
        _output = '0';
        _history = '';
      } else if (value == '=') {
        _history = _output;
        try {
          _output = evalExpression(_output).toString();
        } catch (e) {
          _output = 'Error';
        }
      } else {
        if (_output == '0' || _output == 'Error') {
          _output = value;
        } else {
          _output += value;
        }
      }
    });
  }

  double evalExpression(String expression) {
    expression = expression.replaceAll('x', '*');
    expression = expression.replaceAll('÷', '/');
    expression = expression.replaceAll('√', 'sqrt');
    expression = expression.replaceAll('π', pi.toString());
    expression = expression.replaceAllMapped(
      RegExp(r'(\d+)\^(\d+)'),
      (match) {
        final base = double.tryParse(match.group(1) ?? '0') ?? 0;
        final exponent = double.tryParse(match.group(2) ?? '0') ?? 0;
        return pow(base, exponent).toString();
      },
    );
    return Function.apply(Function.apply(num.parse, [expression]), []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    _history,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    _output,
                    style: const TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            children: <Widget>[
              ...['C', '√', '^', '÷', '7', '8', '9', 'x', '4', '5', '6', '-', '1', '2', '3', '+', 'π', '0', '.', '=']
                  .map(
                    (e) => ElevatedButton(
                      onPressed: () {
                        _calculate(e);
                      },
                      child: Text(
                        e,
                        style:const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
