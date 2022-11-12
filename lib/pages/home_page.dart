import 'package:flutter/material.dart';
import 'package:flutter_catlog/Widgets/item_widgets.dart';
import 'package:flutter_catlog/models/catalog.dart';

import '../Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: ((context, index) {
              return ItemWiget(
                // item: CatalogModel.items[index],
                item: dummyList[index],
              );
            })),
      ),
      drawer: MyDrawer(),
    );
  }
}
