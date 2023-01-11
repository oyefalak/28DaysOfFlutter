// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_first_app/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "By Shabbir";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData() async {
      await Future.delayed(const Duration(seconds: 2));
      final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
      final decodedData = jsonDecode(catalogJson);
      var productsData = decodedData["products"];
      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty)? ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) =>
               ItemWidget(
                item: CatalogModel.items[index],
               ),
        ):const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
