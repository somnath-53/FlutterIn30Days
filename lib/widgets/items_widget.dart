import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Fluttertoast.showToast(
              msg: item.name,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.cyan[200],
              textColor: Colors.black);
        },
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.display),
        trailing: Text("\₹" + item.price.toString()),
      ),
    );
  }
}
