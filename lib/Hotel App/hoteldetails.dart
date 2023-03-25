import 'package:flutter/material.dart';


class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 270,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/hotel3.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: <Widget>[

                      Container(
                        height: 270,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                  child: Text(
                                "DETAIL",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      ),

                      const Positioned(
                        bottom: 40,
                        left: 10,
                        child: Text(
                          "GrandHyatt\nThrissur",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                        ),
                        ),

                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              "8.4/90 reviews",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () {},
                            icon:  const Icon(Icons.favorite_border),
                            color: Colors.white,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(height: 50,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.location_on,size: 16,),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text("4km to Railway Station",style: TextStyle(fontSize: 14,),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text("\$ 200",style: TextStyle(fontSize: 20,color: Colors.purple),
                            ),
                            Text("/per night",style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple
                      ),
                      child: const Text("Book Now",
                      style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 8),
                      child: Text("DESCRIPTION",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                    Text("Conveniently Located Five-Star Hotel in Thrissur for Business or Leisure Travel. Experience an energizing "
                        "affair at Hyatt Regency Thrissur, the only international hospitality brand in the cultural capital of Kerala."
                        " With a minimalist style and modern amenities, the hotel is just a 15-minute-drive from the Thrissur Railway "
                        "Station and bus stand, and 90 minutes away from Cochin International Airport.The hotel features 77 spacious "
                        "guestrooms including seven Regency Suites and a Presidential Suite. Unwind in luxury and comfort during your stay "
                        "in Thrissur, the cultural capital of Kerala. The hotel’s spacious rooms and suites are fitted with every modern"
                        " convenience required for a comfortable stay.Enjoy your stay.",
                    style: TextStyle(color: Colors.black,fontSize: 15),textAlign: TextAlign.justify,)
                  ],
                ),
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
