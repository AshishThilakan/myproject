import 'package:flutter/material.dart';

import 'WelcomePage.dart';

class NavDrawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.red, Colors.pink],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 30, top: 30, bottom: 30, right: 10),
                    height: 60,
                    width: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomePage(),
                            ));
                      },
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5AAznSwDVnt3Sy7naaLEqmyvbE4Jj4QbTdg&usqp=CAU"),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Terra Crowall",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Administrator",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              itemName(Icons.developer_board, "Dashboard"),
              itemName(Icons.leaderboard, "Leads"),
              itemName(Icons.people, "Clients"),
              itemName(Icons.work, "Projects"),
              itemName(Icons.people, "Partners"),
              itemName(Icons.subscriptions, "Subscription"),
              itemName(Icons.payment, "Payments"),
              itemName(Icons.people_outline, "Users"),
              itemName(Icons.library_add, "Library"),
              Container(
                  margin: EdgeInsets.all(40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade800,
                        onPrimary: Colors.white,
                        shadowColor: Colors.orangeAccent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(10, 40),
                      ),
                      onPressed: () {},
                      child: Text("Logout"))),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemName(
      IconData icon,
    String text,
  ) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 35.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}
