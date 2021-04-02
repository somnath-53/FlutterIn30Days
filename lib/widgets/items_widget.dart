import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.display),
        trailing: Text("\₹" + item.price.toString()),
      ),
    );
  }
}
