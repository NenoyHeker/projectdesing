import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List recetas;

  const CardSwiper({super.key, required this.recetas});

  @override
  Widget build(BuildContext context) {
    final _screenSize =
        MediaQuery.of(context).size; //Se obtiene el tamaño de pantalla

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      //width: double.infinity,
      //height: 300,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                  image: NetworkImage(''),
                  placeholder: AssetImage(''),
                  fit: BoxFit.cover));
        },
        itemCount: recetas.length,
        //pagination: SwiperPagination(),
        //control: SwiperControl(),
      ),
    );
  }
}
