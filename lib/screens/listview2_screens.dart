import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["Pou", "Fornite", "Pacman", "Mortal Kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview_tipo2'),
        ),
        body: ListView.separated(
          //obtener el tamaño de mi lista
          itemCount: games.length,
          //Creamos el constructor de cada de mi lista
          itemBuilder: (context, index) => ListTile(
            //asignamos el titulo a partir de mi slista
            title: Text(games[index]),
            //asignamos el icono de caga elemento
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
