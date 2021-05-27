
import 'package:catalogo_filmes/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                //Color.fromRGBO(102, 229, 199, 1.0),
                Color.fromRGBO(128, 175, 244, 1.0),
                Color.fromRGBO(214, 135, 245, 1.0),
                Color.fromRGBO(196, 57, 131, 1.0)
              ])),
        ),
        _loginContent(context),
      ],
    );
  }

  _loginContent(context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0),
      body: Container(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50),
            _title(),
            _description(),
            SizedBox(height: 50),
            _botaoLogin(context),
            SizedBox(height: 1)
          ],
        ),
      ),
    );
  }

  _title() {
    return Text(
        'Simulação de Login:',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
    );
  }

  _description() {
    return Text('Protótipo de telas criado para simular um login '
        'realizando comunicação entre front-end e back-end.'
        'Clique no botão abaixo para realizar a simulação',
      textAlign: TextAlign.center,
      style: GoogleFonts.robotoMono(
        color: Colors.white,
        fontSize: 15,
      ),
    );
  }

  _botaoLogin(context) {
    return RaisedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage())),
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
            bottom: 15
          ),
          child: Text(
            "Simular Login",
            style: GoogleFonts.poppins(
                color: Colors.deepPurple,
                fontSize: 20
            ),
          ),
        )
    );
  }
}
