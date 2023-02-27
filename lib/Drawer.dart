import 'package:flutter/material.dart';
import 'package:myproject/Assignment/WelcomePage.dart';

void main() {
  runApp(MaterialApp(
    home: NaviDrawer(),
  ));
}

class NaviDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.redAccent),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Eleven",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    "eleven@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()));
                    },
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlmp7PiMFWsMlv1-mshHFmPBIDgiypF5RjlA&usqp=CAU"),
                    ),
                  ),
                  otherAccountsPictures: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePage()));
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtTKX3ED0zOhChR6I7yFHgyl2LuFbWPMjiAA&usqp=CAU"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePage()));
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI5pXUtndetI-jzAT4iuk_DVk747GgCvATxg&usqp=CAU"),
                      ),
                    ),
                  ],
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.red, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Clients"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("Projects"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payments"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.subscriptions),
                  title: Text("Subscription"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.library_add),
                  title: Text("Library"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.developer_board),
                  title: Text("Dashboard"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
                Divider(
                  thickness: 2,
                )
              ],
            ),
          ),
        ));
  }
}
