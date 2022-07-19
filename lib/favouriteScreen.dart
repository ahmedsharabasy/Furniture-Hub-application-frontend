import 'package:flutter/material.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 200, 248, 244),

      leading:BackButton(color: Colors.black),

      title: const Text("Furniture Hub",style: TextStyle(color:Colors.black45),),

      actions: [
          IconButton(onPressed: (() {}), 
          icon: Icon(Icons.favorite),
          color: Colors.red,
          ),
        ],
    ),


    body: Column (
      children: [
        Image.asset('assets/full image.jpeg'),

        Container(
          child: Text('No Favourite Products Yet',style: TextStyle(color: Colors.black26,fontSize: 22,height: 5)),
        )
      ],
    ),
    );
  }
}