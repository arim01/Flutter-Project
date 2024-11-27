import 'package:flutter/material.dart';
import 'package:principal_flutter_project/Screens/login.page.dart';
import 'package:principal_flutter_project/Screens/register.page.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      title: "Metouekel Hajar flutter app",
      //home: HomePage(),

      //on doit preciser la page initial
      initialRoute: '/login',
      //on cree un map sous forme de cle valeur
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
