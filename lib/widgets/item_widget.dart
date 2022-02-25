import 'package:demoapp/models/catalog.dart';
import 'package:flutter/material.dart ';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          // print('${item.name} tapped!');
        },
        title: Text(item.name),
        subtitle: Text(item.desc),
        leading: Image.network(item.image),
        trailing: Text(
          '\$${item.price}',
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
