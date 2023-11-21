import 'package:flutter/material.dart';
import 'package:untitled99/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List categories =[
    {
      "iconname" : Icons.laptop,
      "title" : "Laptop"
    },
    {
      "iconname" : Icons.android_outlined,
      "title" : "Mobile"
    },
    {
      "iconname" : Icons.electric_bike,
      "title" : "Bike"
    },
    {
      "iconname" : Icons.card_giftcard_outlined,
      "title" : "Gifts"
    },
    {
      "iconname" : Icons.electric_car_outlined,
      "title" : "Car"
    },
  ];

  List items =[
    {
      "image" : "images/1.png",
      "title" : "Wireless Headphone ",
      "subtitle" : "Description Fine Good" ,
      "price" : "350\$",
    },
    {
      "image" : "images/pexels-dids-1190830.jpg",
      "title" : "Watch ",
      "subtitle" : "Watch For FeMale" ,
      "price" : "150\$",
    },
    {
      "image" : "images/pexels-pixabay-277319 (1).jpg",
      "title" : "Watch ",
      "subtitle" : "Watch Casio i68" ,
      "price" : "130\$",
    },
    {
      "image" : "images/pexels-energepiccom-110471.jpg",
      "title" : "Smart Watch ",
      "subtitle" : "Description Fine Good" ,
      "price" : "400\$",
    },
  ];


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
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: InputBorder.none,
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                )),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.menu , size: 40,),
                )
              ],
            ),
            Container(height: 30,),
            Text('Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

            Container(height: 20,),

            Container(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i){
                return       Container(
                 margin: EdgeInsets.only(right: 10,),
                  child: Column(
                   children: [
                    Container(
                     decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: BorderRadius.circular(100),
                     ),
                      child: Icon(
                     categories[i]['iconname'] , size: 40 ,),
                     padding: EdgeInsets.all(15),
             ),
                     Text(categories[i]['title'],
                     style: TextStyle (fontWeight: FontWeight.bold, color: Colors.grey[800],),
                   ),
                  ],
                ),
              );
                }
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Best Selling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView.builder(
                itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
                itemBuilder: (context , i ){
                return  InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemsDetails(data:items[i],)));
                  },
                  child: Card(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 300,
                            color: Colors.grey[200],
                            child: Image.asset(
                              items[i]['image'],
                              height: 100,fit: BoxFit.fill,),
                          ),
                          Text(
                            items[i]['title'],
                            style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold),),
                          Container(height: 2,),
                          Text(
                            items[i]['subtitle'],
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey),),
                          Container(height: 6,),
                          Text(items[i]['price'],
                            style: TextStyle(
                                fontSize: 14, color: Colors.orange,
                                fontWeight: FontWeight.bold),),
                        ],),
                    ),
                  ),
                );
               }

            )
          ],
        ),
      ),
    );
  }
}
