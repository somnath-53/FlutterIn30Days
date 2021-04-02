import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Somnath";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
