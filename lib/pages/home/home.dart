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
      body: ListView(
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
                dotBgColor: Colors.black.withOpacity(0.5),
                boxFit: BoxFit.cover,
              ),
             ),
             Container(height:200 ,child: ListView(
               scrollDirection: Axis.horizontal,
               children:<Widget>[
                 Container(
                   height: 90,
                   width:90,
                   child: ListTile(
                   title: Image.asset("images/Appe logo.png"),
                 )),
                 Container(
                   height: 90,
                   width:90,
                   child: ListTile(
                   title: Image.asset("images/mis logo.jpg"),
                 )),
                 Container(
                   height: 90,
                   width:120,
                   child: ListTile(
                   title: Image.asset("images/Lg logo.jpg"),
                   )),
                   Container(
                   height: 90,
                   width:100,
                   child: ListTile(
                   title: Image.asset("images/samaung logo.png"),
                   )),
             ],))
        ],
      ),
    );
  }
}
