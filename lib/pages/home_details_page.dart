import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/home_widgets/add_to_cart.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50),
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
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.xl4.color(context.accentColor).bold.make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                10.heightBox,
                "Dolor sea takimata ipsum sea eirmod aliquyam est. Eos ipsum voluptua eirmod elitr, no dolor dolor amet eirmod dolor labore dolores magna. Amet vero vero vero kasd, dolore sea sed sit invidunt nonumy est sit clita. Diam aliquyam amet tempor diam no aliquyam invidunt."
                    .text
                    .textStyle(context.captionStyle)
                    .make()
                    .p16()
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
