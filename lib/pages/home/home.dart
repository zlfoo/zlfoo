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
                    'images/Apple product.png',
                  ),
                  AssetImage(
                    'images/slider3.jpg',
                  ),
                  AssetImage(
                    'images/Apple product.png2.jpg',
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
             Container( padding: EdgeInsets.all(10) , child: Text("Categories" , style: TextStyle(fontSize: 30, color: Colors.blue),),),
             Container(height:120 ,child: ListView(
               scrollDirection: Axis.horizontal,
               children:<Widget>[
                 Container(
                   height: 90,
                   width:90,
                   child: ListTile(
                   title: Image.asset("images/Appe logo.png"),
                   subtitle: Container(child: Text("Apple" , style: TextStyle(fontSize: 22),),),
                 )),
             ],)),
               Container( padding: EdgeInsets.all(7) , child: Text("Last product" , style: TextStyle(fontSize: 20, color: Colors.blue),),),
               Container(height: 400
                 ,child: GridView(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                 children: <Widget>[
                   GridTile(child:Image.asset("images/Appe logo.png7.png"),footer: Container(color: Colors.blue [50],child: Text("Iphone12 pro max", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),),),
                   GridTile(child:Image.asset("images/Apple product.png3.jpg"),footer: Container(color: Colors.blue [50],child: Text("Iphone13 pro max", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),),),
                   GridTile(child:Image.asset("images/Appe logo.png5.jpg"),footer: Container(color: Colors.blue [50],child: Text("Iphone13 pro max", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),),),
                   GridTile(child:Image.asset("images/Appe logo.png4.jpg"),footer: Container(color: Colors.blue [50],child: Text("Iphone13 pro max", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),),),
                   ],
               ) ,)
        ],
      ),
    );
  }
}
