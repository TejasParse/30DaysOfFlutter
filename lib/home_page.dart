import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Text("Hello"),
      drawer: Drawer(),
    );
  }
}
