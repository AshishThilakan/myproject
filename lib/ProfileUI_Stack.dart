import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          textAlign: TextAlign.center,
        ),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.more_horiz_outlined)],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2b_yhqPkNLafnxdZpfx27XdcgL3Aw4pOVKQ&usqp=CAU")),
              const Positioned(
                  bottom: -60.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dcux4gXwEyY6FYzDOPywbey7PSYwxRHdXw&usqp=CAU"),
                  )),
              const Positioned(
                  bottom: -60.0,
                  left: 20.0,
                  top: 200.0,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.message,
                    ),
                    backgroundColor: Colors.red,
                  )),
              const Positioned(
                bottom: -60.0,
                right: 20.0,
                top: 200.0,
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Center(
                child: Text(
              "David Beckham",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )),
            subtitle: Center(
                child: Text(
              "model/superstar",
              style: TextStyle(color: Colors.lightBlue),
            )),
          ),
        ],
      ),
    );
  }
}
