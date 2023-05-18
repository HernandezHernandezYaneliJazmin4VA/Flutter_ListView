import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  var games = ["Pou", "Fornite", "Pacman", "Mortal Kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview_tipo1'),
        ),
        body: ListView(
          children: [
            //spread
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.pink),
                      onTap: () {
                        var seleccion = games;
                        print(seleccion);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
