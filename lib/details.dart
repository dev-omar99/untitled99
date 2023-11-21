import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined) , label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined) , label: "Profile"),
        ],
      ),
      endDrawer:const Drawer(),
      appBar: AppBar(
        //centerTitle: true,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_basket_outlined, color: Colors.black,),
            Text(' Ecommerce', style: TextStyle(color: Colors.black),),
            Text('ElMor', style: TextStyle(color: Colors.orange),),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['image']) ,
          Container(
              child: Text(
                widget.data['title'],
                textAlign: TextAlign.center,
              )) ,
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 25),
              child: Text(
                widget.data['subtitle'],
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.grey,
                 ),)) ,
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                widget.data['price'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),)) ,
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("color : ",style: TextStyle(color: Colors.grey),),
              SizedBox(width: 10,),
              Container(height: 20, width: 20, decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.orange),
              ),),
              Text("  Grey"),
              SizedBox(width: 20,),
              Container(height: 20, width: 20, decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),),
              Text("  Black")
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
              child: Text("Size:    34  35  40  45 " ,textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: (){} ,
              child: Text("Add to Card"),
            ),
          )

        ]),
    );
  }
}
