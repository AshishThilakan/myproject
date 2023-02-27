import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyBottomBar(),));
}

class MyBottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyBottomBarState();

  }


class _MyBottomBarState extends State<MyBottomBar> {
  List screen = [Text("Home"),
    Text("Favorite"),
    Text("People"),
    Text("Account"),
    Text("Search")];
  int index = 0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("BottomBar"),
      backgroundColor: Colors.teal,
    ),
    bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80)),
      
      child: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
          },
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.yellow,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.people),
            label: "User"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
            label: "Search"),
      ]),
    ),
    body: Center(
      child: screen[index],
    ),
  );
  }
}