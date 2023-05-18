import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview2",
      routes: {
        "/listview1": (BuildContext context) => ListView1(),
        "/listview2": (BuildContext context) => ListView2(),
      },
      //Pantalla inicial
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
          primaryColor: Colors.orange,
          accentColor: Colors.blue,
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.pink,
            fontSize: 20,
          ))),
      // A widget which will be started on application startup
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
