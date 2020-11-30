import 'package:flutter/material.dart';
import 'package:peliculas/src/pages/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
      body: Container(
        child: Column(
          children: [_swiperTarjetas()],
        ),
      ),
    );
  }

  Widget _swiperTarjetas() {
    return CardSwiper(peliculas: [1, 2, 3, 4, 5]);
  }
}