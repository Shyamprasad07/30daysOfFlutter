import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';

class ItemWiget extends StatelessWidget {
  final Item item;

  const ItemWiget({Key? key, required this.item})
      : assert(Item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (() {
          print("${item.name}pressed");
        }),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
