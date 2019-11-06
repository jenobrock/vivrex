import 'package:flutter/material.dart';
import 'package:vivrex/ui/Home.dart';
import './ui/Principal.dart';
import './ui/Commande.dart';
import './ui/Acceuil.dart';
void main(){
  runApp(
    new MaterialApp(
      title: "Application",
      home: new Acceuil(),
      debugShowCheckedModeBanner: false,
    )
  );
}