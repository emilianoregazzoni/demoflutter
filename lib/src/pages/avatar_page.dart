import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estamos en avatar page'),
        actions: <Widget>[


          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.wikia.nocookie.net/marvelanimated/images/6/6a/Smythe.jpg/revision/latest/scale-to-width-down/340?cb=20080801203325'),
              radius: 30.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown[200]
            ),
          )
        ],
      ),
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible_forward),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://static.comicvine.com/uploads/original/8/84857/2581106-alastair_smythe.jpg'),
        fadeInDuration: Duration(milliseconds: 200))
      ),
    );
  }
}