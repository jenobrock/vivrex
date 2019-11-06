import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'Drawer.dart';

import 'detail.dart';

class Allmusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AllmusicState();
  }
}

class AllmusicState extends State<Allmusic> {
  var notification = 0;
  static int ind = 0;
  final TextEditingController _editingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: new Scaffold(
        drawer: new Draw1(),
          appBar: new AppBar(
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Badge(badgeColor: Colors.blue,
                  badgeContent: Text(notification.toString()),
                  child: new Image.asset(
                    "images/shop.png",
                  ),
                ),
              ),
            ],
            backgroundColor:Colors.red.withOpacity(0.3),
            bottom: TabBar(
              indicatorColor: Colors
              .green,
              labelColor: Colors.black,
              indicatorWeight: 15,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Color(0xffff0863), width: 4.0),
                  insets: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 0)),
              labelStyle: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w300),
              unselectedLabelColor: Colors.black26,
              tabs: <Widget>[
                Tab(
                  text: 'Poissonnerie',
                  icon: Image.asset(
                    "images/Fish_48px.png",
                    height: 30,
                  ),
                ),
                Tab(
                  text: 'Boucherie/Charcuterie',
                  icon: Image.asset("images/Cow_32.png", height: 30),
                ),
                Tab(
                  text: 'Epicerie',
                  icon: Image.asset("images/Tomato_32.png", height: 30),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body:new TabBarView(
            children: <Widget>[all(), playlist(), encours()],
            )
           
          ),
      length: 3,
    );
  }

  Widget all() {
    return new Center(
      child: new FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('filed/poissonnerie.json'),
        builder: (context, snapshot) {
          var k = json.decode(snapshot.data.toString());
          return new GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new Card(elevation: 10,
                   child: Hero(
                     tag:k[index]['title'] ,
                     child: Material(
                       child: InkWell(
                         onTap: (){ setState(() {
                      notification++;
                      ind = index;
                     _showformdialog(ind,k);
                    });},
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
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          );
        },
      ),
    );
  }
void _showformdialog(int o,var t){
  String p=t[o]['title'];
  var alert=new AlertDialog(
        content: new Row(
          children: <Widget>[
            new Expanded(
              child: Material(
                            color: Colors.red.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextField(
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                controller: null,
                                decoration: InputDecoration(
                                    hintText: "Entrer la quantité voulue",
                                    labelText: "Commande de $p",
                                    icon: Icon(
                                      Icons.payment,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
            )
          ],
        ),
        actions: <Widget>[
          new FlatButton(
            onPressed:()=>debugPrint('dfvsfv') ,
            child: Text("Valider"),
          ),
           new FlatButton(
            onPressed:(){Navigator.pop(context);
            setState(() {
                      notification--;
                     
                    });
            },
            child: Text("Annuler"),
          )
        ],

  );
  showDialog(context: context,
    builder: (_){
      return alert;
    }
  );
}
  Widget playlist() {
    return new Center(
      child: new FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('filed/poissonnerie.json'),
        builder: (context, snapshot) {
          var k = json.decode(snapshot.data.toString());
          return new GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new Card(elevation: 10,
                   child: Hero(
                     tag:k[index]['title'] ,
                     child: Material(
                       child: InkWell(
                         onTap: (){ setState(() {
                      notification++;
                      ind = index;
                       _showformdialog(ind,k);
                    });},
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
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          );
        },
      ),
    );
  }

  Widget encours() {
    return new Center(
      child: new FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('filed/poissonnerie.json'),
        builder: (context, snapshot) {
          var k = json.decode(snapshot.data.toString());
          return new GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new Card(elevation: 10,
                   child: Hero(
                     tag:k[index]['title'] ,
                     child: Material(
                       child: InkWell(
                         onTap: (){ setState(() {
                      notification++;
                      ind = index;
                       _showformdialog(ind,k);
                    });},
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
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          );
        },
      ),
    );
  }
}
/* elevation: 10,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Stack(
                        children: <Widget>[
                          new Image.asset(
                            "images/" + k[index]["path"] + ".jpg",
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: (MediaQuery.of(context).size.height / 5)),
                            child: new Text(
                              "  " + k[index]['title'],
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),  new TabBarView(
            children: <Widget>[all(), playlist(), encours()],
          )*/
