import 'package:flutter/material.dart';

class Grid_StackUI extends StatelessWidget {
  var images = ["assets/icons/usa_images.jpg",
    "assets/icons/Uk_images.jpg",
    "assets/icons/France_images.jpg",
    "assets/icons/Russia.jpg",
    "assets/icons/Cannada.jpg",
  ];
  var texts = ["USA","England","France","Russia","Canada"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View"),),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 5),

          itemBuilder: (context,index) {
            return Stack(
              children: <Widget>[
             Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: AssetImage(images[index]),
                     fit: BoxFit.cover
                 ),

               ),
             ),

                Positioned(
                    left: 10,
                    bottom: 10,
                    child: Text(texts[index],
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.white60),),

                )

              ],

            );
  },
        itemCount: images.length,
      )
    );

  }
}
