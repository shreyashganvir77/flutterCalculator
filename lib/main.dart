import 'package:calculator/themes/themes.dart';
import 'package:calculator/widgets/floatingbutton.dart';
import 'package:flutter/cupertino.dart';
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
              child: IconButton(
                onPressed: () {
                  currentTheme.toggleTheme();
                },
                icon: Icon(MdiIcons.lightSwitch),
              ),
            ),
            color: Theme.of(context).backgroundColor,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            color: Theme.of(context).backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: 'C',
                      color: Color(0xFFFEB92D),
                      textColor: Color(0xFFFFFFFF),
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                        color: Theme.of(context).colorScheme.secondary,
                        shadowColor: 0xfffed8b1,
                        icon: Icon(
                          MdiIcons.squareRoot,
                          color: Color(0xFFFCB82D),
                        )),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '7',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '4',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '1',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '.',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: '(',
                      color: Theme.of(context).colorScheme.secondary,
                      textColor: Color(0xFFFCB82D),
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                      color: Theme.of(context).colorScheme.secondary,
                      shadowColor: 0xfffed8b1,
                      icon: Icon(
                        MdiIcons.percent,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '8',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '5',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '2',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '0',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      title: ')',
                      color: Theme.of(context).colorScheme.secondary,
                      textColor: Color(0xFFFCB82D),
                      shadowColor: 0xfffed8b1,
                    ),
                    CalculatorButtonwithIcon(
                      color: Theme.of(context).colorScheme.secondary,
                      shadowColor: 0xfffed8b1,
                      icon: Icon(
                        MdiIcons.plusMinus,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '9',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '6',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: 0xffc6c6c5,
                      title: '3',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffc6c6c5,
                      color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.multiplication,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.division,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.minus,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      shadowColor: 0xffb3a5d9,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.plus,
                        color: Theme.of(context).colorScheme.onSurface,
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
