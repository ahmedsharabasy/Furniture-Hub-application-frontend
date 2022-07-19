import 'package:flutter/material.dart';
import 'package:furniture_app/favouriteScreen.dart';
import 'package:furniture_app/store.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 200, 248, 244),
      
      leading: IconButton(
          onPressed: (() {print("aaaa");}),
          icon: Icon(Icons.menu), 
          tooltip: 'Navigation menu',
          color: Colors.black45
        ),

      title: const Text("Furniture Hub",style: TextStyle(color:Colors.black45),),

      actions: [
          IconButton(onPressed: (() {Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return favouriteScreen();
            })
          );
          }), 
          icon: Icon(Icons.favorite),
          color: Colors.red,
          ),

          IconButton(onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {return storeScreen();}));
          }), 
          icon: Icon(Icons.add_shopping_cart_sharp),
          color: Colors.black45,
          )
        ],
    ),

      body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
            Container(
              margin: EdgeInsets.fromLTRB(12, 30, 6, 30),
              width: 120,
              height: 120,
              padding: EdgeInsets.all(25.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(13),
                color:Color.fromARGB(255, 200, 226, 244)
              ),
              child: Column(children: [
                Icon(Icons.chair_outlined,size: 50,color: Color.fromARGB(255, 72, 71, 71)),
                Text("10 items",style: TextStyle(height: 1.45,color: Color.fromARGB(255, 72, 71, 71)))
              ]),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(6, 30, 6, 30),
              width: 120,
              height: 120,
              padding: EdgeInsets.all(25.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(13),
                color:Color.fromARGB(255, 199, 239, 238)
              ),
              child: Column(children: [
                Icon(Icons.home,size: 50,color: Color.fromARGB(255, 72, 71, 71)),
                Text("10 items",style: TextStyle(height: 1.45,color: Color.fromARGB(255, 72, 71, 71)))
              ]),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(6, 30, 12, 30),
              width: 120,
              height: 120,
              padding: EdgeInsets.all(25.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(13),
                color:Color.fromARGB(255, 251, 224, 245)
                      ),
              child: Column(children: [
                Icon(Icons.chair,size: 50,color: Color.fromARGB(255, 72, 71, 71)),
                Text("10 items",style: TextStyle(height: 1.45,color: Color.fromARGB(255, 72, 71, 71)))
                    ]
                  ),            
                )
              ]
            ),

////////////////////////////////////////////////////////

              Row(
                children: [
                  Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15.0),
                child: Text("Explore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 27)),
              ),
                ],

              ),
////////////////////////////////////////////////////////



            Row(
              children: [
            Expanded(child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 4,vertical: 30.0),
              margin: EdgeInsets.fromLTRB(8, 0, 4, 0),
              width: 195,
              height: 260,
              padding: EdgeInsets.all(25.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(13),
                color:Color.fromARGB(255, 231, 231, 231)
              ),
              child: Column(children: [
                Image.asset('assets/black chair.jpeg'),
                Text("product title",style: TextStyle(height: 3,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold,fontSize: 17 )),
                Text("\$ 500",style: TextStyle(height: 1.45,color: Color.fromARGB(255, 116, 116, 116),fontWeight: FontWeight.bold,fontSize: 10.5))

              ]),
            )
            ),

            Expanded(child: Container(
              margin: EdgeInsets.fromLTRB(4, 0, 8, 0),
              width: 195,
              height: 260,
              padding: EdgeInsets.all(25.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(13),
                color:Color.fromARGB(255, 231, 231, 231)
              ),
              child: Column(children: [
                Image.asset('assets/chair2.jpeg'),
                Text("product title",style: TextStyle(height: 3,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold,fontSize: 17)),
                Text("\$ 500",style: TextStyle(height: 1.45,color: Color.fromARGB(255, 116, 116, 116),fontWeight: FontWeight.bold,fontSize: 10.5))
              ]),
            ), 
            )               
            ],
            ),
            //////////////////////////////////////////////////////////
            Row(
                children:[
                 Container(
                   margin: EdgeInsets.fromLTRB(35, 30, 0, 0),
                   height: 48,
                   width: 340,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 96, 149, 118)
                  ),
                onPressed: () { },
                child: Text('Add more',style: TextStyle(color: Colors.white),),
                )
                 )
                ],
              ),
          ]
        ), 
      
    );
  }
}

