import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Status(),
    debugShowCheckedModeBanner: false,
  ));
}

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/No Dp.png"),
              ),
              Positioned(
                  bottom: -1,
                  right: -1,
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        size: 15,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: -570,
                  left: 300,
                  child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.camera_alt),
                    onPressed: () {},
                  ))
            ],
          ),
          title: const Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("Tap to add status update"),
        ),
        Container(
          //height: 33,
          //width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              "Recent updates",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.grey[700]),
            ),
          ),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp.jpg")),
          title: Text("Anna"),
          subtitle: Text("24 minutes ago"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp9.jpg")),
          title: Text("Emma"),
          subtitle: Text("57 minutes ago"),
        ),
        Container(
          //height: 33,
          //width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              "Viewed updates",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700]),
            ),
          ),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp8.jpg")),
          title: Text("Ben"),
          subtitle: Text("59 minutes ago"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp7.jpg")),
          title: Text("Steeve"),
          subtitle: Text("Yesterday, 23:34"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp6.jpg")),
          title: Text("Robert"),
          subtitle: Text("Yesterday, 22:43"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp5.jpg")),
          title: Text("Eleven"),
          subtitle: Text("Yesterday, 21:10"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp4.jpg")),
          title: Text("John"),
          subtitle: Text("Yesterday, 20:16"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp3.jpg")),
          title: Text("Kendel"),
          subtitle: Text("Yesterday, 19:37"),
        ),
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp2.jpg")),
          title: Text("Anusha"),
          subtitle: Text("Yesterday, 17:20"),
        ),
      ]),
    );
  }
}
