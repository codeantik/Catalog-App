import 'package:demoapp/models/catalog.dart';
import 'package:demoapp/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$${catalog.price}'.text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog,).wh(120, 50),  
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()), 
              child: Image.network(
                catalog.image,
                colorBlendMode: BlendMode.overlay,
              ),
            ).py12().h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold.color(context.accentColor).make(),
                      catalog.desc.text.xl.textStyle(
                        TextStyle(
                          // ignore: deprecated_member_use
                          color: context.theme.buttonColor,
                        )
                      ).make(),
                      10.heightBox,
                      'Lorem sed nonumy diam sanctus et stet, ipsum et diam sit dolores, dolore eos amet diam dolor nonumy erat dolor dolores, erat amet sadipscing sed lorem erat sed eirmod, amet dolore labore dolores tempor ipsum duo dolor. Kasd sed stet consetetur vero sanctus invidunt. Vero et clita ut et amet.'
                      .text.sm.textStyle(
                        const TextStyle(
                          color: Colors.grey,
                        )
                      ).make().p16(),
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ).centered(),
      ),
    );
  }
}
