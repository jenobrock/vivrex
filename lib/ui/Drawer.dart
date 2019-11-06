import 'package:flutter/material.dart';
import 'package:vivrex/ui/Acceuil.dart';
import 'package:vivrex/ui/Acceuil2.dart';
import 'package:vivrex/ui/Principal.dart';
class  Draw1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   
    return new Draw1State();
  }
}

class Draw1State extends State<Draw1> {
  @override
  Widget build(BuildContext context) {
   
    
    return  new Drawer(
      
        child: ListView(
          
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("jenovic nginamau"),
              accountEmail: Text("jenovicnginamaut@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black,
                
              ),
            ),
         InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Acceuil2()
                    );
                Navigator.push(context, rooter);
              },
              child: ListTile(
                title: Text("Acceuil"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Allmusic()
                    );
                Navigator.push(context, rooter);
              },
              child: ListTile(
                title: Text("Boutique"),
                leading: Icon(Icons.shop),
              ),
            ),
            InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                /*var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Album2()
                    );
                Navigator.push(context, rooter);*/
              },
              child: ListTile(
                title: Text("Panier"),
                leading: Icon(Icons.shopping_basket),
              ),
            ), Divider(),
            InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                /*var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Album2()
                    );
                Navigator.push(context, rooter);*/
              },
              child: ListTile(
                title: Text("Parametres"),
                leading: Icon(Icons.settings),
              ),
            ), InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Acceuil()
                    );
                Navigator.push(context, rooter);
              },
              child: ListTile(
                title: Text("Se Connecter"),
                leading: Icon(Icons.cast_connected),
              ),
            ),
             Divider(),
             InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                /*var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Album2()
                    );
                Navigator.push(context, rooter);*/
              },
              child: ListTile(
                title: Text("A Propos"),
                leading: Icon(Icons.question_answer),
              ),
            ),
            InkWell(
              focusColor:Color.fromRGBO(15, 12, 24, 1),
              onTap: () {
                /*var rooter=MaterialPageRoute(
                    builder: (BuildContext context)=>new Album2()
                    );
                Navigator.push(context, rooter);*/
              },
              child: ListTile(
                title: Text("Aide"),
                leading: Icon(Icons.help),
              ),
            ),
            Divider(),
          ],
        ),
      );
     
  
  }
}
