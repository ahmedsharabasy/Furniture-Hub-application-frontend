import 'package:flutter/material.dart';

class storeScreen extends StatelessWidget {
  const storeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 200, 248, 244),
        leading: BackButton(color: Colors.black),
        title: const Text(
          "Furniture Hub",
          style: TextStyle(color: Colors.black45),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart_sharp),
            color: Colors.black45,
          )
        ],
      ),
      
      
      
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
            width: 380,
            height: 200,
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color.fromARGB(255, 231, 231, 231)),
            child: Row(children: [
              Image.asset('assets/red chair.jpeg'),
              Container(
                margin: EdgeInsets.fromLTRB(30, 15, 0, 0),
                child: Column(children: [
                  Text("product title",
                      style: TextStyle(
                          height: 3,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                  Container(
                      margin: EdgeInsets.fromLTRB(1, 0, 50, 0),
                      child: Text("\$ 500",
                          style: TextStyle(
                              height: 1.45,
                              color: Color.fromARGB(255, 94, 94, 94),
                              fontWeight: FontWeight.bold,
                              fontSize: 13))),
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      height: 43,
                      width: 130,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 96, 149, 118)),
                          onPressed: () {},
                          label: Text('Remove'),
                          icon: Icon(Icons.remove_shopping_cart_outlined)))
                ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
