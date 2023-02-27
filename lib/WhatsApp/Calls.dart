import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calls(),
  ));
}

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                const CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/Dp2.jpg")),
                Positioned(
                    bottom: -570,
                    left: 300,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.add_ic_call_rounded),
                    ))
              ],
            ),
            title: const Text("Anusha"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
                Text("Yesterday, 18:50")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp3.jpg")),
            title: const Text("Kendel"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 17:30")
              ],
            ),
            trailing: const Icon(Icons.videocam, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp.jpg")),
            title: const Text("Anna"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 17:10")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp4.jpg")),
            title: const Text("John"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 17:00")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp5.jpg")),
            title: const Text("Eleven"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 16:30")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp7.jpg")),
            title: const Text("Steeve"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
                Text("Yesterday, 16:12")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp6.jpg")),
            title: const Text("Robert"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 15:50")
              ],
            ),
            trailing: const Icon(Icons.videocam, color: Colors.green),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icons/Dp9.jpg")),
            title: const Text("Emma"),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                ),
                Text("Yesterday, 14:00")
              ],
            ),
            trailing: const Icon(Icons.call, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
