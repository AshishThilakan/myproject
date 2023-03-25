
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Assignment/WelcomePage.dart';
import 'hoteldetails.dart';

void main() {
  runApp(MaterialApp(
    home: HotelHomePage(),debugShowCheckedModeBanner: false,
  ));
}

final List rooms = [
  {"image": "assets/icons/hotel3.jpg", "tittle": "Beautiful Room"},
  {"image": "assets/icons/hotel1.jpg", "tittle": "Awesome room near Thrissur"},
  {"image": "assets/icons/hotel2.jpg", "tittle": "Peaceful Room"},
  {"image": "assets/icons/hotel4.jpg", "tittle": "Vintage room near Thrissur"},
];

class HotelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.cyan,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()
                      ));
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border,
                  color: Colors.white,
                  )),
            ],
            floating: true,
          flexibleSpace: ListView(
            children: <Widget>[
              const SizedBox(height: 70.0,),
              const Text("Type your location",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0
              ),),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Thrissur, Kerala",border: InputBorder.none,
                    icon: IconButton(onPressed: () {

                    },
                        icon: const Icon(Icons.search))
                  ),
                ),
              )
            ],
          ),
          ),
         const SliverToBoxAdapter(child: SizedBox(height: 10,)),
          SliverToBoxAdapter(child: _buildCategories(),),
          SliverList(delegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
            return _buildRooms(context,index);
          },childCount: 100),
          )
        ],
      ),
    );
  }
}

Widget _buildRooms(BuildContext context, int index) {
  var room = rooms[index % rooms.length];
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return HotelDetails();
      }));
    },
    child: Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(

          child: Material(
           elevation: 5,
              borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
              Image.asset(room['image'],width: MediaQuery.of(context).size.width*0.9,fit: BoxFit.cover),
                  Positioned(
                    right: 10,
                      top: 10,
                      child: Icon(Icons.star,
                  color: Colors.grey.shade800,)),
                  const Positioned(
                      left: 10,top: 10,
                      child: Icon(Icons.star_border,
                  color: Colors.white,size: 24,)),
                  Positioned(
                    bottom: 20,
                      right: 10,
                      child: Container(
                    padding: const EdgeInsets.all(10),color: Colors.white,
                    child: const Text("\$40"),
                  ))
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(room['tittle'],style: const TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    const Text("Thrissur, Kerala"),
                    const SizedBox(height: 10,),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget> [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        SizedBox(width: 5,),
                        Text("(220 Reviews)",style: TextStyle(color: Colors.grey),)
                      ],
                    )
                  ],
                ),
              )
            ],),
          ),
        ),
      ),

    ),
  );
}

Widget _buildCategories() {
  return Container(
    height: 100,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(width: 15,),
      Category(
        backgroundColor: Colors.pink,
        icon: Icons.hotel,
        tittle: "Hotel",
      ),
      const SizedBox(width: 15,),
      Category(
        backgroundColor: Colors.blue,
        icon: Icons.restaurant,
        tittle: "Restaurant",
      ),
      const SizedBox(width: 15,),
      Category(backgroundColor: Colors.orange,
      icon: Icons.local_cafe,
      tittle: "Cafe",)

    ],),
  );
}

class Category extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final Color backgroundColor;

  Category({Key? key, required this.icon, required this.tittle, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: () {},
     child: Container(decoration: BoxDecoration(color: backgroundColor,
     borderRadius: const BorderRadius.all(Radius.circular(5))),
       margin: const EdgeInsets.symmetric(vertical: 10),
       padding: const EdgeInsets.all(10),
       width: 100,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Icon(icon,color: Colors.white,),
           const SizedBox(height: 5,),
           Text(tittle,style: const TextStyle(color: Colors.white),)
         ],
       ),
     ),
   );
  }
}
