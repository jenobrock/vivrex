import 'package:flutter/material.dart';
import 'package:vivrex/ui/Home2.dart';
import 'Home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  String groupValue="homme";
  @override
  Widget build(BuildContext context) {
    final gb = GlobalKey<FormState>();
    TextEditingController em = new TextEditingController();
    TextEditingController pwd = new TextEditingController();
    TextEditingController nom = new TextEditingController();
    TextEditingController pwd2 = new TextEditingController();
    
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
                                controller: nom,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: "Nom Complet",
                                    icon: Icon(
                                      Icons.person_outline,
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
                            borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white.withOpacity(0.8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:75.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text("Homme"),
                                        Radio(
                                          value: "homme",
                                          groupValue:groupValue,
                                          onChanged: (e) => valueChanged(e),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:75.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text("Femme"),
                                        Radio(
                                          value: "femme",
                                          groupValue: groupValue,
                                          onChanged: (e) => valueChanged(e),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
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
                                controller: em,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "E mail",
                                    icon: Icon(
                                      Icons.alternate_email,
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
                                controller: pwd,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Mot de Passe",
                                    icon: Icon(
                                      Icons.lock_outline,
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
                                obscureText: true,
                                controller: pwd2,
                                decoration: InputDecoration(
                                    hintText: "Confirmer le Mot de Passe",
                                    icon: Icon(
                                      Icons.lock_outline,
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
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Home2()));},
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Suivant",
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

  valueChanged(e) {
    setState(() {
     if (e=="homme") {
       groupValue=e;
     } else if(e=="femme"){
       groupValue=e;
     } 
    });
  }
}
