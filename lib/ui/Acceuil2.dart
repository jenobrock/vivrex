import 'dart:convert';
import 'Drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Acceuil2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Acceuil2State();
  }
}

class Acceuil2State extends State<Acceuil2> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/pomme.jpg"),
          AssetImage("images/viande.jpg"),
          AssetImage("images/viande1.jpg"),
          AssetImage("images/viande.jpg"),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 500),
      ),
    );
    // TODO: implement build
    return new Scaffold(
      drawer:new Draw1(),
      backgroundColor: Colors.white,
      body: new Container(
        height: double.infinity,
        width:double.infinity,
        
        child: new ListView(
          children: <Widget>[
            new Container(
              child: image_carousel,
            ),
            Padding(padding: EdgeInsets.only(left: 50.0)),
           Container(
             height: double.infinity,
             width:double.infinity,
             child: new Center(
          child: new FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('filed/poissonnerie.json'),
            builder: (context, snapshot) {
              var k = json.decode(snapshot.data.toString());
              return new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    color: Color.fromRGBO(15, 12, 24, 1),
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          height: 60,width: 40,
                          child: new Image.asset("images/"+k[index]["path"]+".jpg",
                          height: 60,width: 40,
                          ),
                         
                        ),
                       
                        new Text(
                          "  " + k[index]['title'],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: k == null ? 0 : k.length,
              );
            },
          ),
        ),
           ),
            new Container(
              height: double.infinity,
              width: double.infinity,
        child: new Center(
          child: new FutureBuilder( 
            future: DefaultAssetBundle.of(context).loadString('filed/poissonnerie.json'),
            builder: (context, snapshot){
              var k=json.decode(snapshot.data.toString());
              return new GridView.builder(
                itemBuilder: (BuildContext context, int index){
                  return  new Card(elevation: 10,
                   child: Hero(
                     tag:k[index]['title'] ,
                     child: Material(
                       child: InkWell(
                        
                         child: GridTile(
                           footer: Container(
                             color: Colors.white70,
                             child: ListTile(
                               leading:Text(k[index]['title'] ),
                             ),
                           ),
                           child: new Image.asset(
                            "images/" + k[index]["path"] + ".jpg",fit: BoxFit.cover,
                          ) ,
                         ),
                       ),
                     ),
                   ),
                  );
                },
                itemCount: k == null ? 0 : k.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              );
            },
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
