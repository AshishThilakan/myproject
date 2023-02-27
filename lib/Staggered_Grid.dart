import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
void main(){
  runApp(MaterialApp(home: StaggeredGrid1(),));
}
class StaggeredGrid1 extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles: const [
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 1),
        ],
        padding: const EdgeInsets.all(4),
        children: [
          Customchild(iconData: Icons.home,bgcolor: Colors.amber,),
          Customchild(iconData: Icons.phone,bgcolor: Colors.red,),
          Customchild(iconData: Icons.lock_clock,bgcolor: Colors.yellow,),
          Customchild(iconData: Icons.message,bgcolor: Colors.purple,),
          Customchild(iconData: Icons.location_on_outlined,bgcolor: Colors.orange,),
          Customchild(iconData: Icons.bluetooth,bgcolor: Colors.pinkAccent,),
          Customchild(iconData: Icons.wifi,bgcolor: Colors.green,),
          Customchild(iconData: Icons.alarm,bgcolor: Colors.blue,),

        ],
      )
  );
}
}

class Customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData iconData;
  Customchild({this.bgcolor,required this.iconData});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(iconData,color: Colors.white,),
    );
  }}