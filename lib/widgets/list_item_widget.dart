import 'dart:convert';

import 'package:catalog/utils/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class list_item_widget extends StatefulWidget {
  list_item_widget({Key? key, required this.item}) : super(key: key);

  final Items item;

  @override
  State<list_item_widget> createState() => _list_item_widgetState();
}

class _list_item_widgetState extends State<list_item_widget> {



  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: ListTile(
        leading: Image.network(widget.item.imageUrl),
        title: Text(widget.item.itemName),
        subtitle: Text(widget.item.itemDescription),
        trailing: Text(
          "\$${widget.item.itemPrice.toString()}",
        style: TextStyle(
            color: Colors.deepPurple,
        ),
        textScaleFactor: 1.5,
      ),
      ),
    );
  }
}
