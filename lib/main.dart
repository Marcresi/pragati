import 'package:flutter/material.dart';
import 'package:pragati/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:pragati/Home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title='Pragati';

  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  // This widget is the root
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: MyApp.title,
      theme: ThemeData(
        primarySwatch: buildMaterialColor(const Color(0x0a1e2e)),
        accentColor: buildMaterialColor(const Color(0x57C760)),
        fontFamily: 'Aeonik',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'Aeonik',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Aeonik',
            fontSize: 20,
          ),
        ),
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {


//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text(MyApp.title),),
//         body:Container(
//           child:HomePage(),
//         ),
//     );
//   }
// }
