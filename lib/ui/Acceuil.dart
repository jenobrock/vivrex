import 'package:flutter/material.dart';
import 'package:vivrex/ui/Home2.dart';
import 'package:vivrex/ui/Principal.dart';
import 'Home.dart';
class Acceuil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AcceuilState();
  }
}

class AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    final gb = GlobalKey<FormState>();
    TextEditingController em = new TextEditingController();
    TextEditingController pwd = new TextEditingController();
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/n12.jpg', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height /3),
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
                            color: Colors.blue.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: MaterialButton(
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Allmusic()));},
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Se Connecter",
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
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                text: "Mot de Passe Oublié ? clickez ici pour "
                              ),TextSpan(
                                text: "   Se souvenir de moi", style: TextStyle(color: Colors.red)
                              )
                            ]
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child:InkWell(
                          child:Container(
                            height: 40,
                            child:  Text("S'inscrire", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 25,letterSpacing: 10)),
                          ),
                          onTap: (){var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Home()
                    );
                Navigator.push(context, rooter);},
                        ) ,
                        )
                        ,
                        Text(
                          "Autres moyen de Connection",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Colors.red.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: MaterialButton(
                                onPressed: () {},
                                minWidth: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    
                                    Padding(padding: const EdgeInsets.fromLTRB(0,4.0,20.0,4.0),
                                    child: Image.asset("images/Google.png" , width: 30.0,height: 30.0,),
                                    ),
                                    Text(
                                  "Google",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                  ],
                                )
                              ),
                            ),
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
} /*  Center(
            child: Text("Vivrex eXpress",
            style: new TextStyle(
              fontSize: 70,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),),
          ),*/
//Navigator.push(context, MaterialPageRoute(builder: (context) => Detail()));
