import 'package:flutter/material.dart';

void main() {
  runApp(Pizza());
}

class Pizza extends StatelessWidget {
  Pizza({Key? key}) : super(key: key);

  final List<String> imageList = [
    "images/piza3.png",
    "images/_piza.png",
    "images/piza4.png"
  ];

  final List<String> textList = [
    "Vegetables_Pizza",
    "Cheese pizza",
    "Chicken pizza"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wellcome To Pizza Menu'),
          centerTitle: true, // Set the title of the app bar
          backgroundColor: const Color.fromARGB(
              255, 104, 8, 1), // Set the background color of the app bar
        ),
        backgroundColor: const Color.fromARGB(
            255, 218, 216, 216), // Set the background color of the page
        // backgroundColor: Colors.red,
        body: SafeArea(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10.0),
                color: const Color.fromARGB(255, 119, 29, 2),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        imageList[index],
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      textList[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
