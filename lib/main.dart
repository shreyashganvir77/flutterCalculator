import 'package:calculator/themes/themes.dart';
import 'package:calculator/widgets/floatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      _expression,
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10.0),
                      child: IconButton(
                        onPressed: () {
                          currentTheme.toggleTheme();
                        },
                        icon: Icon(MdiIcons.lightSwitch),
                      ),
                    ),
                    Text('Switch to' +
                        (CustomTheme.current ? ' Light ' : ' Dark ') +
                        'Theme')
                  ],
                ),
              ],
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
                      shadowColor: Color(0xfffed8b1),
                      number: () => clear(_expression),
                    ),
                    CalculatorButtonwithIcon(
                        sign: () => numClick('√'),
                        color: Theme.of(context).colorScheme.secondary,
                        shadowColor: Color(0xfffed8b1),
                        icon: Icon(
                          MdiIcons.squareRoot,
                          color: Color(0xFFFCB82D),
                        )),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '7',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('7'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '4',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('4'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '1',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('1'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '.',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('.'),
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
                      shadowColor: Color(0xfffed8b1),
                      number: () => numClick('('),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => numClick('%'),
                      color: Theme.of(context).colorScheme.secondary,
                      shadowColor: Color(0xfffed8b1),
                      icon: Icon(
                        MdiIcons.percent,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '8',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('8'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '5',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('5'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '2',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('2'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '0',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('0'),
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
                      shadowColor: Color(0xfffed8b1),
                      number: () => numClick(')'),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => numClick("+_"),
                      color: Theme.of(context).colorScheme.secondary,
                      shadowColor: Color(0xfffed8b1),
                      icon: Icon(
                        MdiIcons.plusMinus,
                        color: Color(0xFFFCB82D),
                      ),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '9',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('9'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '6',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('6'),
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '3',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      number: () => numClick('3'),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print('clear'),
                      shadowColor: Theme.of(context).colorScheme.surface,
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
                      sign: () => numClick("*"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.multiplication,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => numClick("/"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.division,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => numClick("-"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.minus,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => numClick("+"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
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
                        onPressed: () => evaluate(_expression),
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
