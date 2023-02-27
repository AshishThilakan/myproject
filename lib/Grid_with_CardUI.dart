import 'package:flutter/material.dart';


class Grid_CardUI extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid_View"),),
      body: Padding(
        padding:  const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          children: [

            Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.home,color: Colors.black,size: 50,),
                  Text("Home",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.notification_important_outlined,color: Colors.black,size: 50,),
                  Text("Notification",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.camera_alt,size: 50,),
                  Text("Camera",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.phone,size: 50,),
                  Text("Phone",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.message,size: 50,),
                  Text("Inbox",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.access_alarm_outlined,size: 50,),
                  Text("Clock",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.photo,size: 50,),
                  Text("Gallery",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.add_to_drive_outlined,size: 50,),
                  Text("Drive",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.limeAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.location_on_outlined,size: 50,),
                  Text("Map",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrangeAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.bluetooth,size: 50,),
                  Text("Bluetooth",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pinkAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.wifi,size: 50,),
                  Text("Wifi",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon(Icons.flashlight_off_sharp,size: 50,),
                  Text("Torch",style: TextStyle(color: Colors.black,fontSize: 30),)
                ],),),






          ],
        ),),
    );
  }
}
