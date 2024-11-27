import 'package:calculator/components/MyButton.dart';
// import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    void equalPress() {
      Parser p = Parser();
      Expression expression = p.parse(userinput);
      // ContextModel contextModel = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
      answer = eval.toString();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: [
                        Text(
                          userinput.toString(),
                          style: const  TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          answer.toString(),
                          style:  const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onprassed: () {
                            userinput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+/-',
                          onprassed: () {
                            userinput += '+/-';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '%',
                          onprassed: () {
                            userinput += '%';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '/',
                          onprassed: () {
                            userinput += '/';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onprassed: () {
                            userinput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '8',
                          onprassed: () {
                            userinput += '8';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '9',
                          onprassed: () {
                            userinput += '9';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'x',
                          onprassed: () {
                            userinput += '*';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onprassed: () {
                            userinput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '5',
                          onprassed: () {
                            userinput += '5';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '6',
                          onprassed: () {
                            userinput += '6';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '-',
                          onprassed: () {
                            userinput += '-';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onprassed: () {
                            userinput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '2',
                          onprassed: () {
                            userinput += '2';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '3',
                          onprassed: () {
                            userinput += '3';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+',
                          onprassed: () {
                            userinput += '+';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onprassed: () {
                            userinput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '.',
                          onprassed: () {
                            userinput += '.';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          onprassed: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '=',
                          onprassed: () {
                            equalPress();

                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
