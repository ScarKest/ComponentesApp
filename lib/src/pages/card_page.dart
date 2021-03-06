import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de la Tarjeta'),
            subtitle: Text('lorem ipsum' * 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: null,
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: null,
                child: Text('Aceptar'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2021/01/28/18/21/beach-5958718_960_720.jpg'),
            placeholder: AssetImage('assets/images/loading1.gif'),
            height: 250,
            fadeInDuration: Duration(milliseconds: 600),
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10), child: Text('Nombre de Imagen')),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          ),
        ],
        color: Colors.white
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }
}
