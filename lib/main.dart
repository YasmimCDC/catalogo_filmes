import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:catalogo_filmes/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:  AnimatedSplashScreen(
        splash: CachedNetworkImage(
          imageUrl: "https://pequenocineasta.com.br/wp-content/uploads/2019/02/claquete_animado.gif",
          fit: BoxFit.contain,
        ),
        duration: 6000,
        splashIconSize: 300,
        nextScreen: LoginPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}