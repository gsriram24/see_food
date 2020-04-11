import 'package:flutter/material.dart';
import 'package:see_food/screens/meal_detail_screen.dart';
import 'screens/upload_image_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeeFood',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (_) => MyHomePage(),
        MealDetailScreen.routeName: (_) => MealDetailScreen(),
      },
    );
  }
}
