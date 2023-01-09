import 'package:flutter/material.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:my_first_app/utils/routes.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}




















