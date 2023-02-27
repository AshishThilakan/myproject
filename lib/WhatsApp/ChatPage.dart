import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChatPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp.jpg")),
            Positioned(
                bottom: -570,
                left: 300,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.message),
                ))
          ],
        ),
        title: const Text("Anna"),
        subtitle: const Text("Smile please!"),
        trailing: const Text("22:50"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp2.jpg")),
        title: Text("Anusha"),
        subtitle: Text("Love yourself"),
        trailing: Text("20:21"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp3.jpg")),
        title: Text("Kendel"),
        subtitle: Text("Be kind"),
        trailing: Text("20:15"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp4.jpg")),
        title: Text("John"),
        subtitle: Text("Urgent calls only"),
        trailing: Text("19:55"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp5.jpg")),
        title: Text("Eleven"),
        subtitle: Text("Busy"),
        trailing: Text("19:40"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp6.jpg")),
        title: Text("Robert"),
        subtitle: Text("Learning new lessons"),
        trailing: Text("19:30"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp7.jpg")),
        title: Text("Steeve"),
        subtitle: Text("Fly high"),
        trailing: Text("19:20"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp8.jpg")),
        title: Text("Ben"),
        subtitle: Text("Addicted to travel"),
        trailing: Text("19:10"),
      ),
      const ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/icons/Dp9.jpg")),
        title: Text("Emma"),
        subtitle: Text("New chapter"),
        trailing: Text("19:00"),
      ),
    ]));
  }
}
