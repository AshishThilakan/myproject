import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ProfileUi(),
  debugShowCheckedModeBanner: false,));
}

class ProfileUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.transparent,
       leading: const Icon(Icons.arrow_back,color: Colors.grey),
       actions: const [Icon(Icons.menu,color: Colors.black,)],
       elevation: 0.0,
     ),
     body: Column(
       children: [
         const Center(
           child: SizedBox(
             height: 150,
             width: 150,
            child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYweiryiQeJntpsXVqSiNwKT-jur6nwwbUFw&usqp=CAU"),),
           ),
         ),
         Container(
           margin: const EdgeInsets.only(left: 50,right: 50,top: 25),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: const [
               CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGZS58fbcjz0osWBWhPCTWRbJUGlfIM2xF4g&usqp=CAU"),),
               CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMYMlXp9GNPZrJ64gzEU4ExzSOmwx0nvHKJQ&usqp=CAU"),),
               CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRQM0VBjIyq8SMU6Em1Rfzk7sSLYjuILeH2w&usqp=CAU"),),
               CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCHxR2C_q8ugOMQzSmMovD3ni-z1QqTopSjg&usqp=CAU"),),
             ],
           ),
         ),
         Container(
           margin: const EdgeInsets.only(left: 50,right: 50,top: 25),
           height: 80,
           child: Column(
             children: const [
               Text("Dulqar Salman",
               style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
               Text("@Actor",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
             ],
           ),
         ),
         Container(
           margin: EdgeInsets.only(left: 35,right: 35),
           //height: MediaQuery.of(context).size.width*0.4,
           //width: MediaQuery.of(context).size.width*0.2,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 ProfileTile(
                   txt: "Privacy", 
                   icon: Icon(Icons.privacy_tip,color: Colors.black),
                 ),
                 ProfileTile(txt: "Purchase History",
                     icon: Icon(Icons.history,color: Colors.black,)),
                 ProfileTile(txt: "Help & Support",
                     icon: Icon(Icons.help_outline,color: Colors.black)),
                 ProfileTile(txt: "Settings",
                     icon: Icon(Icons.settings,color: Colors.black)),
                 ProfileTile(txt: "Invite a freind",
                     icon: Icon(Icons.person_add_alt_outlined,color: Colors.black)),
               ],
             ),
           ),
         )
       ],
     ),
     
     
   );
  }
}

class ProfileTile extends StatelessWidget {
  
  ProfileTile({
  Key? key,
  required this.txt,
    required this.icon,
}) : super(key: key);
  
  final String txt;
  final Icon icon;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[400]
      ),
      child: ListTile(
       /// dense: true,
        title: Text(
          txt,
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
      ),
    );
  }
}

