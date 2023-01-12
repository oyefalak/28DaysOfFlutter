import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/pages/home_details_page.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';


class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index){
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(
                catalog: catalog
               ),
              ),
            ),
            child: CatalogItem(catalog: catalog));
      },
      itemCount: CatalogModel.items.length,);
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
                image: catalog.image
            ),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBlueColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
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
                  ),
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().p(16);
  }
}
