import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filmes = [["1", "teste1", "1h"],
                    ["2", "teste2", "1h e 30 min"],
                    ["3", "teste3", "2h"],
                    ["4", "teste4", "2h e 20 min"],
                    ["5", "teste5", "1h e 45 min"],
                    ["6", "teste6", "2h e 30 min"],
                    ["7", "teste7", "2h e 35 min"],
                    ["8", "teste8", "1h e 30 min"],
                    ["9", "teste9", "2h e 40 min"],
                    ["10", "teste10", "2h e 45 min"],
                    ["11", "teste11", "2h e 15 min"],
                    ["12", "teste12", "2h e 10 min"]];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 63, 138, 1.0),
        elevation: 5.0,
          title: Text(
            "Protótipo de tela de listagem",
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.exit_to_app),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
            );
          })
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: filmes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(12),
                        child: _buildCard(context, filmes[index]),
                    );
                  })
          )
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, List<String> filme) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            //offset: Offset(0, 3)
        )],
        borderRadius: BorderRadius.circular(15),
        gradient: _getRandomLinearGradient(),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: 20.0,
                bottom: 5.0,
            ),
            child: Text(
              "id: " + filme[0] + "      " + filme[1],
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 20.0,
            ),
            child: Text(
                "Duração: " + filme[2],
                style: GoogleFonts.robotoMono(
                  color: Colors.white,
                  fontSize: 11,
                )
            ),
          ),
        ],
      )
    );
  }

  LinearGradient _getRandomLinearGradient() {
    List<List<Color>> colors = [
        [Color.fromRGBO(131,192, 240, 1.0), Color.fromRGBO(88, 131, 231, 1.0)],
        [Color.fromRGBO(209, 140, 230, 1.0), Color.fromRGBO(196, 63, 138, 1.0)],
        [Color.fromRGBO(238, 187, 131, 1.0), Color.fromRGBO(217, 134, 42, 1.0)],
        [Color.fromRGBO(197, 122, 243, 1.0), Color.fromRGBO(143, 113, 241, 1.0)],
        [Color.fromRGBO(104, 231, 204, 1.0), Color.fromRGBO(13, 184, 147, 1.0)],
        [Color.fromRGBO(237, 100, 143, 1.0), Color.fromRGBO(241, 40, 104, 1.0)]
    ];

    final random = new Random();
    int i = random.nextInt(colors.length);

    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: colors[i]
    );//gradientes[i];
  }
}
