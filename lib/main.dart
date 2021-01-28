import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: movieApp(),
      debugShowCheckedModeBanner: false,
    ));

// ignore: camel_case_types
class movieApp extends StatefulWidget {
  @override
  _movieAppState createState() => _movieAppState();
}

// ignore: camel_case_types
class _movieAppState extends State<movieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c262f),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B2C3B),
        elevation: 0.0,
        title: Text('Netmovies'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: ListView(
          children: [
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        'All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        'Action',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        'Adventures',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        'Comedies',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Top Trends',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'JohnWick 3',
                          '8.5/10',
                          'assets/johnwick.jpg',
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 12.0),
                      //   child: movieCard(
                      //     'Storm X',
                      //     '8.5/10',
                      //     'assets\kickass.png',
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Terminator',
                          '8.5/10',
                          'assets/terminator.jpeg',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Avengers',
                          '8.5/10',
                          'assets/avengers.jfif',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),
                Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Recommendation for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Hulk',
                          '8.5/10',
                          'assets/hulk.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Batman',
                          '8.5/10',
                          'assets/batman.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Antman',
                          '8.5/10',
                          'assets/antman.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: movieCard(
                          'Ghost rider',
                          '8.5/10',
                          'assets/ghost.png',
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height:50.0),
          ],
        ),
      ),
    );
  }
}
// ignore: non_constant_identifier_names
Widget movieCard(String Title, String Rate, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Card(
          elevation: 0.0,
          child: Image.asset(
            imgPath,
            fit: BoxFit.fill,
            width: 130.0,
            height: 160.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          Title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          Rate,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}


