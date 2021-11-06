import 'dart:convert';

import 'package:catalog/utils/items.dart';
import 'package:catalog/widgets/list_item_widget.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async{
    var jsonData = await rootBundle.loadString("assets/data/data.json");

    var jsonDecoded = await jsonDecode(jsonData);

    var productsData = jsonDecoded["products"];

    CatalogHolder.itemList = List.from(productsData).map<Items>((index) => Items.fromMap(index)).toList();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //     itemCount: CatalogHolder.itemList.length,
      //   itemBuilder: (context,index){
      //       return list_item_widget(item: CatalogHolder.itemList[index]);
      //   },
      // ),

      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: CatalogHolder.itemList.length,
          itemBuilder: (context, index){
            return Card(
              clipBehavior: Clip.antiAlias,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(

                header: Container(
                  color: Colors.deepPurple,
                    padding: EdgeInsets.all(10),
                    child: Text(CatalogHolder.itemList[index].itemName,style: TextStyle(color: Colors.white),)
                ),
                child: Image.network(CatalogHolder.itemList[index].imageUrl),
                footer: Container(
                  padding: EdgeInsets.all(10),
                    color: Colors.black,
                    child: Text(CatalogHolder.itemList[index].itemPrice.toString(),style: TextStyle(color: Colors.white),)
                ),
              ),
            );
          },
          ),
      drawer: MyDrawer(),
    );
  }
}
