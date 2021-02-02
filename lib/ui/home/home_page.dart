import 'package:flutter/material.dart';
import 'package:flutter_ticket_ui/ui/home/widgets/collection_section.dart';
import 'package:flutter_ticket_ui/ui/home/widgets/for_you_section.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ForYouSection(),
          CollectionSection(),
          //discover
          //upcoming
        ],
      ),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
