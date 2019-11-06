import 'package:flutter/material.dart';

class Commande extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new CommandeState();
  }
}

class CommandeState extends State<Commande> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool inner) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromRGBO(29,72,81,0.7),
              expandedHeight: MediaQuery.of(context).size.height / 4.7,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/viande.jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text(
                  "Faites vos Commandes",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            )
          ];
        },
        body: new Center(
            child: new ListView(
          children: <Widget>[
            TextField(
              controller: null,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  labelText: 'Entrer la quantité',
                  hintText: 'ex 10, 20, 30, 40 kg, ou plus',
                  icon: new Icon(Icons.format_list_numbered_rtl)),
            ),
            TextField(
              controller: null,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  labelText: 'Entrer Votre Nom',
                  hintText: 'ex Jenovic Nginamau',
                  icon: new Icon(Icons.control_point)),
            ),
            TextField(
              controller: null,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  labelText: 'Entrer Votre Nom',
                  hintText: 'ex Jenovic Nginamau',
                  icon: new Icon(Icons.control_point)),
            ),
            TextField(
              controller: null,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  labelText: 'Adresse de Livraison',
                  hintText: 'ex Pays Ville Commune Avenue et Numero ',
                  icon: new Icon(Icons.play_arrow)),
            ),
            Text(
             "Total "
            ),
            new Center(
              child: new RaisedButton(
                child: Text("Commander"),
                onPressed: ()=>debugPrint('hello'),
              color: Color.fromRGBO(139,0,139,0.7),
                elevation: 10,
                textColor: Colors.white,
              ),
            )
          ],
        )),
      ),
    );
  }
}
