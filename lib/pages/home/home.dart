
import 'package:ecommerce_api/components/applocal.dart';
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
        backgroundColor:Colors.blue,
        centerTitle: true,
        elevation: 6,
        leading: IconButton(icon: Icon(Icons.search),onPressed:(){}) ,
        ),
          endDrawer: Drawer(
          child:ListView(
            children: <Widget> [
              UserAccountsDrawerHeader(
              accountName:Text("zoulfeker"),
              accountEmail:Text("zoulfekeralhoseen@gmail.com"),
              currentAccountPicture:CircleAvatar(child:Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.grey ,
                  image: DecorationImage(
                    image:AssetImage("images/drawer.jpg"),fit: BoxFit.cover)),
                      ),
               ListTile(
                 title: Text("${getLang(context, "homepage")}" ,style: TextStyle(color: Colors. black, fontSize: 18 , ),),
                 leading:Icon(Icons.home ,color: Colors.blue[600],size: 25, ),
                 onTap: (){},
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 title: Text("${getLang(context, "sections")}" ,style: TextStyle(color: Colors. black, fontSize: 18 , ),),
                 leading:Icon(Icons.category ,color: Colors.blue[600],size: 25, ),
                 onTap: (){},
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 title: Text("${getLang(context, "Abaut the app")}" ,style: TextStyle(color: Colors. black, fontSize: 18 , ),),
                 leading:Icon(Icons.info,color: Colors.blue[600],size: 25, ),
                 onTap: (){},
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 title: Text("${getLang(context, "Settings")}" ,style: TextStyle(color: Colors. black, fontSize: 18 , ),),
                 leading:Icon(Icons.settings ,color: Colors.blue[600],size: 25, ),
                 onTap: (){},
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 title: Text("${getLang(context, "Log out")}" ,style: TextStyle(color: Colors. black, fontSize: 18 , ),),
                 leading:Icon(Icons.exit_to_app ,color: Colors.blue[600],size: 25, ),
                 onTap: (){},
               ),
               Divider(color: Colors.black54,),
            ],
          ),
        ),
       body:Column(children:<Widget> [
         SizedBox(
          height: 190,
          width:double.infinity,
          child: Carousel(
            images: [
              AssetImage('images/slider1.jpg',), 
              AssetImage('images/slider3.jpg' ,),
              AssetImage('images/slider2.webp' ,),
            ],
          ))
       ],), 
    );
  }
}
               
            
          
        
      
  

  
     
  
