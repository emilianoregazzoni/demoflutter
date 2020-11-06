import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorto(),
      ),
    );
  }


  List<Widget> _crearItems() {
  List<Widget> lista = [];
 
  for (String opt in opciones) {
    final tempWidget  =  ListTile(title: Text(opt),);
     lista..add(tempWidget)
          ..add(Divider());
     }
 
     return lista;
 
}

List<Widget> _crearItemsCorto(){
  return opciones.map((item){

   return Column(
     children: [
       ListTile(
         title: Text(item + '!'), 
         subtitle: Text ('cualquier cosa'),
         leading: Icon(Icons.accessibility_new),
         trailing: Icon(Icons.arrow_forward_rounded),
         onTap: (){},// icono ,
       ),
       Divider(),
     ],
   );

  }).toList();
}
}