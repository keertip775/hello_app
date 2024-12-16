import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  List names = [
    "Technical Q&A",
    "HR Interview Q&A",
    "Self Introduction",
    "Group Discussion",
    "Confidence",
    "JAM Round",
    "Interview Tips",
    "Cover Letter"
  ];
  List gallery = [
    "img1.png",
    "img2.png",
    "img3.png",
    "img4.png",
    "img5.png",
    "img6.png",
    "img7.png",
    "img8.png"
  ];
  Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 30.0,
          childAspectRatio: 2 / 1.6,
        ),
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              shape: LinearBorder.none,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/images/${gallery[index]}",
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    names[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}
