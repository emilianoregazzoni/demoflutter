import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  // const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1(){

    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('ajsdnkjsdnakljsdnalskdnjasjdndnjdndnd'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){
              }, 
              child: Text('Cancelar'))
            ,
             FlatButton(onPressed: (){
              }, 
              child: Text('OK'))
            ]
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(){

    final card =  Container(
      child: Column(
        children: <Widget>[
        FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
        fadeInDuration: Duration(milliseconds: 200),
        height: 300.0,
        fit: BoxFit.cover,),
      
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea')),
        ],
      ),
    );

    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow:  <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)
          )
        ],

       // color: Colors.red
      ),
      child: ClipRRect( // para que la img respete los bordes curvos
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}