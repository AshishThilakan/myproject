import 'package:flutter/material.dart';

import 'Calls.dart';
import 'ChatPage.dart';
import 'Status.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsApp(),
    theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF128C7E))),
    debugShowCheckedModeBanner: false,
  ));
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("data")),
                const PopupMenuItem(child: Text("Linked devices")),
              ];
            })
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "CHATS",
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "STATUS",
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "CALLS",
                    )),
              ]),
        ),
        body: TabBarView(children: [
          const Center(
            child: Text("Camera"),
          ),
          ChatPage(),
          Status(),
          Calls()
        ]),
      ),
    );
  }
}
