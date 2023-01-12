import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';
import '../widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      MyTheme.darkBlueColor
                  ),

                  shape: MaterialStatePropertyAll(
                      StadiumBorder()
                  ),
                ),
                child: "Buy".text.make()
            ).wh(100, 50),
          ],
        ).p32(),
      ),

      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
          ).h32(context),
          Expanded(child: VxArc(
            height: 30.0,
            edge: VxEdge.TOP,
            arcType: VxArcType.CONVEY,
            child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.xl4.color(MyTheme.darkBlueColor).bold.make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                10.heightBox,
              ],
              ).py64(),
            ),
          ))
        ],
        ),
      ),
    );
  }
}
