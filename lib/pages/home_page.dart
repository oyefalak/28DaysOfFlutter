import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "By Shabbir";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],);
            },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
