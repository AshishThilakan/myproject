import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGridScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class StaggeredGridScreen extends StatelessWidget {
  StaggeredGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Gridview UI"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Customwidget(
                  imageData: "assets/icons/Uk_images.jpg",
                  description: "20 jan 2013",
                  text: "Mysteries of the..",
                  height: 200,
                  place: "Carl Sagan",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Customwidget(
                  imageData: "assets/icons/usa_images.jpg",
                  description: "19 Jun 2013",
                  text: "An Empire State of...",
                  height: 300,
                  place: "Ernest Hemingway",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.6,
                child: Customwidget(
                  imageData: "assets/icons/Russia.jpg",
                  description: "10 May 2013",
                  text: "10 Tips for  Hipster T...",
                  height: 200,
                  place: "Vincent Van Gogh",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Customwidget(
                  imageData: "assets/icons/France_images.jpg",
                  description: "18 Sept 2013",
                  text: "My Story of...",
                  height: 300,
                  place: "Stephen",
                ),
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1.6,
                  child: Customwidget(
                    imageData: "assets/icons/Cannada.jpg",
                    description: "20 Oct 2013",
                    text: "My Imaginations...",
                    height: 200,
                    place: "Canada",
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Customwidget(
                    imageData: "assets/icons/India.jpg",
                    description: "02 Nov 2013",
                    text: "My Country...",
                    height: 300,
                    place: "India",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Customwidget extends StatelessWidget {
  final String? imageData;
  final String? text;
  final String? description;
  final double? height;
  final String? place;

  Customwidget({
    Key? key,
    this.imageData,
    this.text,
    this.description,
    this.height,
    this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: double.infinity,
            child: Image.asset(
              imageData!,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              text!,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(description!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(place!),
          ),
        ],
      ),
    );
  }
}
