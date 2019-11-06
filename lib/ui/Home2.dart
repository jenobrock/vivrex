import 'package:flutter/material.dart';
import 'package:vivrex/ui/Home2.dart';
import 'Home.dart';

class Home2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Home2State();
  }
}

class Home2State extends State<Home2> {
  String groupValue="homme";
  @override
  Widget build(BuildContext context) {
    final gb = GlobalKey<FormState>();
    TextEditingController pays = new TextEditingController();
    TextEditingController adresse = new TextEditingController();
    TextEditingController numero = new TextEditingController();
    
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue.withOpacity(0.8),
        centerTitle: true,
        title: new Text("Inscription"),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/n12.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.5),
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextField(
                                cursorColor: Colors.white,
                                controller: pays,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: "Pays",
                                    icon: Icon(
                                      Icons.local_activity,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextField(
                                cursorColor: Colors.white,
                                controller: adresse,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "Adresse",
                                    icon: Icon(
                                      Icons.place,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextField(
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.text,
                                controller: numero,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Numero de telephone",
                                    icon: Icon(
                                      Icons.phone_android,
                                      color: Colors.black,
                                    ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                       
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.blue.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: MaterialButton(
                                onPressed: () {},
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Confirmer",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}
