import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "By Shabbir";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days Days Of Flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
