import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vivrex/ui/Principal.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: ()=>Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:new Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/pomme.jpg"),
          AssetImage("images/viande.jpg"),
           AssetImage("images/viande2.jpg"),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 500),
      ),
    ),
              ),
              new FutureBuilder( 
            future: DefaultAssetBundle.of(context).loadString('filed/album.json'),
            builder: (context, snapshot){
              var index=AllmusicState.ind;
              var k=json.decode(snapshot.data);
              return ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Nom "),
                      Text("Prix "),
                      
                    ],
                  )
                ],
              );
            },
          ),
            ],
          ),
        ),
      ),
    );
  }
}//  k[index]["detail"]["details"].toString()
//  k[index]["detail"]["prix"].toString()