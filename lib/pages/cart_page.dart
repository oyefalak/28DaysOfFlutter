import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.black.make(),
      ),

      body: Column(children: [
        _CartList().p32().expand(),
        Divider(),
        _CartTotal(),
      ],),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        "\$9999".text.xl5.color(context.theme.accentColor).make(),
        30.widthBox,
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll(context.theme.buttonColor)),
            child: "Buy".text.color(Colors.white).make(),
        ).w32(context),
      ],),
    );
  }
}


class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline),
            onPressed: () {  },
        ),
          title: "Item 1".text.make(),
    ),
    );
  }
}








