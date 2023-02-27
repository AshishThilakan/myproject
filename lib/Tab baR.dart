import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Grid_StackUI.dart';
import 'Grid_with_CardUI.dart';

void main(){
  runApp(MaterialApp(home: MYTab(),
  theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFFE53935))),
  debugShowCheckedModeBanner: false,));
}

class MYTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 4,
       child: Scaffold(
     appBar: AppBar(title: const Text("My Tab Bar"),
       actions:  [
         Icon(Icons.camera_alt_outlined),
       SizedBox(width: 20,),
       Icon(Icons.search),
         PopupMenuButton(itemBuilder: (context){
           return [
             PopupMenuItem(child: Text("Settings")),
             PopupMenuItem(child: Text("Privacy")),
             PopupMenuItem(child: Text("Linked devices")),
           ];
         })
     ],
       bottom:  TabBar(
         labelPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.label,
           isScrollable: true,
           tabs: [
       SizedBox(
           width: MediaQuery.of(context).size.width * .1,
           child: Tab(icon: Icon(Icons.people,size: 30,),),),
       SizedBox(
           width: MediaQuery.of(context).size.width*.3,
           child: Tab(text: "Chats")),
       SizedBox(
           width: MediaQuery.of(context).size.width*.3,
           child: Tab(text: "Status")),
       SizedBox(
           width: MediaQuery.of(context).size.width*.3,
           child: Tab(text: "Call"))
     ]),
     ),
    body: TabBarView(
        children: [
      const Center(child: Text("Contacts"),),
          const Center(child: Text("Chats"),),
          Grid_CardUI(),
          Grid_StackUI()

    ]),
   ),
   );
  }
}

