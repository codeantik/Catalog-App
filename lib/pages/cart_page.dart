import 'package:demoapp/core/store.dart';
import 'package:demoapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: 'Cart'.text.make(),
      ),
      body: Column(
        children: [
          const CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
              builder: (context, store, _) {
                return '\$${_cart.totalPrice}'
                    .text
                    .xl5
                    // ignore: deprecated_member_use
                    .color(context.theme.accentColor)
                    .make();
              },
              mutations: const {RemoveMutation},
            ),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: 'Buying not supported yet!'.text.make(),
              ));
            },
            // ignore: deprecated_member_use
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                // ignore: deprecated_member_use
                context.theme.buttonColor,
              ),
            ),
            // ignore: deprecated_member_use
            child: 'Buy'.text.xl.bold.white.make().py12(),
          ).w32(context),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;

    return _cart.items.isEmpty
        ? 'Nothing to show'.text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () {
                  RemoveMutation(_cart.items[index]);
                },
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
