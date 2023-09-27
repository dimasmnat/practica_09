import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<String> tiposDePokemon = [
    'Normal',
    'Fighting',
    'Flying',
    'Poison',
    'Ground',
    'Rock',
    'Bug',
    'Ghost',
    'Steel',
    'Fire',
    'Water',
    'Grass',
    'Electric',
    'Psychic',
    'Ice',
    'Dragon',
    'Dark',
    'Fairy',
    'Unknown',
    'Shadow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 09 - Pokédex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: tiposDePokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text(tiposDePokemon[index]),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/601px-Pokebola-pokeball-png-0.png',
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
             
            },
          );
        },
      ),
    );
  }
}
