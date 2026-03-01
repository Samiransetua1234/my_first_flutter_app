import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My Calculator',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent)
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  String _output = "0";
  String _input = "";
  double _num1 = 0;
  double _num2 = 0;
  String _operand = "";

  void _onButtonPressed(String label) {
    setState(() {
      if (label == "C") {
        _output = "0";
        _input = "";
        _num1 = 0;
        _num2 = 0;
        _operand = "";
      } else if (label == "+" || label == "-" || label == "X" || label == "/") {
        _num1 = double.parse(_output);
        _operand = label;
        _input = "";
      } else if (label == "=") {
        _num2 = double.parse(_output);
        if (_operand == "+") _output = (_num1 + _num2).toString();
        if (_operand == "-") _output = (_num1 - _num2).toString();
        if (_operand == "X") _output = (_num1 * _num2).toString();
        if (_operand == "/") _output = (_num1 / _num2).toString();
        _num1 = 0;
        _num2 = 0;
        _operand = "";
      } else {
        _input += label;
        _output = _input;
      }
    });
  }


  Widget _buildButton(String label){
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: ()=> _onButtonPressed(label),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                label,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ),
        ),

    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("My Calculator")),
      // body: const Center(child: Text("Ready to build!"),),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(_output,
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold
                ),
            ),
           ),
          ),
          const Divider(height: 1),
          Column(
            children: [
              Row(
                children: [
                  _buildButton("7"),
                  _buildButton("8"),
                  _buildButton("9"),
                  _buildButton("/"),
                ],
              ),
              Row(
                children: [
                  _buildButton("4"),
                  _buildButton("5"),
                  _buildButton("6"),
                  _buildButton("X"),
                ],
              ),
              Row(
                children: [
                  _buildButton("1"),
                  _buildButton("2"),
                  _buildButton("3"),
                  _buildButton("-"),
                ],
              ),
              Row(
                children: [
                  _buildButton("C"),
                  _buildButton("0"),
                  _buildButton("="),
                  _buildButton("+"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

