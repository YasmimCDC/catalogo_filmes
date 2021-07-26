import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  const DetalhePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        _cabecalho(),
        _detalhes()
      ],
    );
  }

  Widget _cabecalho() {
    return SliverAppBar(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50)
        )
      ),
      expandedHeight: 200,
      stretch: true,

      flexibleSpace: FlexibleSpaceBar(
        title: Text(
            "Nome do filme"
        ),
        stretchModes: [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        titlePadding: EdgeInsets.only(left: 100),
        background: Stack(
          fit: StackFit.expand,
            children: <Widget>[
              Image.network(
                "https://assets-prd.ignimgs.com/2021/05/25/cruella-blogroll-01-1621981557074.jpg?width=1280",
                fit: BoxFit.cover,
              ),
              DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[
                            Color(0x85000000),
                            Color(0x25868282)
                          ]
                      )
                  )
              )
            ]
        ),
      ),
    );
  }

  Widget _detalhes2() {
    return Column(
      children: [
        ListView(

          children: [

          ],
        ),
      ],
    );
  }

  Widget _detalhes() {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(15),
              child: Container(
                color: Colors.blue[100 * (index % 9 + 1)],
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  "Item $index",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
          },
          childCount: 10, // 1000 list items
        )
    );
  }
}
