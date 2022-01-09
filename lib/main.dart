import 'package:calculator/themes/themes.dart';
import 'package:calculator/widgets/floatingbutton.dart';
import 'package:flutter/material.dart';
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [],
                      ),
                    ),
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
                    ),
                    CalculatorButtonwithIcon(
                        sign: () => print("√"),
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
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '4',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '1',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
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
                      shadowColor: Color(0xfffed8b1),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print("%"),
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
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '5',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '2',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
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
                      shadowColor: Color(0xfffed8b1),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print("+_"),
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
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '6',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    CalculatorButton(
                      shadowColor: Theme.of(context).colorScheme.surface,
                      title: '3',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Theme.of(context).colorScheme.onSurface,
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
                      sign: () => print("*"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.multiplication,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print("/"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.division,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print("-"),
                      shadowColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      icon: Icon(
                        MdiIcons.minus,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    CalculatorButtonwithIcon(
                      sign: () => print("+"),
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
