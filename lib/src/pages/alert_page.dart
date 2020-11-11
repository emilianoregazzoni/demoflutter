import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estamos en alert page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible_forward),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}