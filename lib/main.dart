import 'package:calculator/themes/themes.dart';
import 'package:calculator/widgets/floatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .35,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(color: Colors.black),
              ),
            ),
            color: Color(0xFFECEEF0),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            color: Color(0xFFECEEF0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: 'C',
                      color: 0xFFFEB92D,
                      textColor: 0xFFFFFFFF,
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                        color: 0xFFE6D9C3,
                        shadowColor: 0xfffed8b1,
                        icon: Icon(
                          MdiIcons.squareRoot,
                          color: Color(0xFFFCB82D),
                        )),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '7',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '4',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '1',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '.',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: '(',
                      color: 0xFFE6D9C3,
                      textColor: 0xFFFCB82D,
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                      color: 0xFFE6D9C3,
                      shadowColor: 0xfffed8b1,
                      icon: Icon(
                        MdiIcons.percent,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '8',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '5',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '2',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '0',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: ')',
                      color: 0xFFE6D9C3,
                      textColor: 0xFFFCB82D,
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                      color: 0xFFE6D9C3,
                      shadowColor: 0xfffed8b1,
                      icon: Icon(
                        MdiIcons.plusMinus,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '9',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '6',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '3',
                      color: 0xFFF5F4F7,
                      textColor: 0xFF51555F,
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffc6c6c5,
                      color: 0xFFF5F4F7,
                      icon: Icon(
                        MdiIcons.backspaceOutline,
                        color: Color(0xFF51555F),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: 0xFFE1D5E9,
                      icon: Icon(
                        MdiIcons.multiplication,
                        color: Colors.black,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: 0xFFE1D5E9,
                      icon: Icon(
                        MdiIcons.division,
                        color: Colors.black,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: 0xFFE1D5E9,
                      icon: Icon(
                        MdiIcons.minus,
                        color: Colors.black,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: 0xFFE1D5E9,
                      icon: Icon(
                        MdiIcons.plus,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff461eab).withOpacity(0.15),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(2, 5),
                          ),
                        ],
                      ),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Color(0xFF9128DF),
                        child: Icon(
                          MdiIcons.equal,
                          color: Colors.white,
                          size: 35,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
