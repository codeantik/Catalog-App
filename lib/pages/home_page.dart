import 'package:demoapp/core/store.dart';
import 'package:demoapp/models/cart.dart';
import 'package:demoapp/models/catalog.dart';
import 'package:demoapp/utils/routes.dart';
import 'package:demoapp/widgets/home_widgets/catalog_header.dart';
import 'package:demoapp/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
// import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  final url = 'https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3';

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    // final response = await http.get(Uri.parse(url));
    // final catalogJson = response.body;
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    // print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: const {AddMutation, RemoveMutation},
        builder: (context, store, status) => FloatingActionButton(
          // ignore: deprecated_member_use
          backgroundColor: context.theme.buttonColor,
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          child: const Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(
          color: Vx.red500,
          size: 22,
          count: _cart.items.length,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                  ? const CatalogList().py16().expand()
                  : const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
