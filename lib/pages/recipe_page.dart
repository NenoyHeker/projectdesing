import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:proyectodesing/widget/card_swiper_widget.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
        backgroundColor: Color.fromRGBO(255, 88, 88, 100),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          //columna de la imágen
          Column(
            children: [
              Container(
                width: 800.0,
                child: Image(
                  image: NetworkImage(
                    'https://thumbs.dreamstime.com/b/espagueti-bolo%C3%B1%C3%A9s-44237816.jpg',
                  ),
                ),
              )
            ],
          ),

          Row(children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  _crearCardDetalles(context),
                  SizedBox(
                    height: 20.0,
                  ),
                  _crearSwiper(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _crearCardDetalles(context)
                ],
              ),
            )
          ])
        ],
      ),
    );
  }

  //Crear Card de detalles de la receta
  Widget _crearCardDetalles(context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        height: 200.0,
        width: 400.0,
        color: Color.fromRGBO(255, 88, 88, 100),
        child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                Text(
                  'Detalle 1: ' + 'Valor 1 de la API',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
                ),
                Text(
                  'Detalle 2: ' + 'Valor 2 de la API',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
                ),
                Text(
                  'Detalle 3: ' + 'Valor 3 de la API',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
                ),
                Text(
                  'Detalle 4: ' + 'Valor 4 de la API',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
                ),
                Text(
                  'Detalle 5: ' + 'Valor 5 de la API',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
                ),
              ],
            )));
  }

//Método para crear el Swiper
  Widget _crearSwiper() {
    return FutureBuilder(
      future: peliculasProviders.getCartelera(),
      builder: (context, AsyncSnapshot<List<Pelicula>> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(peliculas: snapshot.data!);
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
