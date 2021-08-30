import 'package:ecommerce_api/components/applocal.dart';
import 'package:ecommerce_api/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${getLang(context, "my shop")}"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 6,
        leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
      ),
      endDrawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
              height: 190,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage(
                    'images/slider1.jpg',
                  ),
                  AssetImage(
                    'images/slider3.jpg',
                  ),
                  AssetImage(
                    'images/slider2.webp',
                  ),
                ],
                dotSize: 8,
                dotIncreaseSize: 2,
                dotSpacing: 20,
                dotColor: Colors.white,
                dotBgColor: Colors.blue.withOpacity(0.5),
                boxFit: BoxFit.cover,
                overlayShadow: true,
                overlayShadowColors: Colors.blue,
                overlayShadowSize: 0.2,
              ))
        ],
      ),
    );
  }
}
