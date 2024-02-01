import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '6488032'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title}) : super();
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Mango",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image:
                    "https://th.bing.com/th/id/R.102c7f983218fcb73a190b2c0eb32bb2?rik=57oY8AoX6mMziA&riu=http%3a%2f%2fproduct.hstatic.net%2f1000282430%2fproduct%2fcan-gio-mango-500g_7ad8e8c343564233b7f4191217eb1c49_grande.jpg&ehk=YGQnaZ9onD4pptXYD06ICi%2f7%2bXciBplkHWrRAwj0lqo%3d&risl=&pid=ImgRaw&r=0"),
            ProductBox(
                name: "Cherry",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image:
                    "https://th.bing.com/th/id/OIP.gkmvNcq4iWG7Ap10zXXBaAHaFo?rs=1&pid=ImgDetMain"),
            ProductBox(
                name: "Orange",
                description: "Laptop is most productive development tool",
                price: 2000,
                image:
                    "https://th.bing.com/th/id/R.e0f5429b5bd202955d7a2cacfb521d9a?rik=TQ2QOFzYW8Alyw&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-orangeorangefruitfoodtastydeliciousorangecolorclipart-3315225824957requ.png&ehk=KsyjG7ABqEnFPtkHC05t6mpw%2bLUcll6tXqb5sIN4Oaw%3d&risl=1&pid=ImgRaw&r=0"),
            ProductBox(
                name: "apple",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "8.png"),
            ProductBox(
                name: "Banana",
                description: "Pendrive is useful storage medium",
                price: 100,
                image: "9.png"),
            ProductBox(
                name: "Pineapple",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                image: "10.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super();
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              (image.startsWith('http') == true)
                  ? Image.network(image)
                  : Image.asset("assets/" + image, width: 100, height: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
// Image.network("" + image),