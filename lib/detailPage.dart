import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String heroTag;

  DetailPage({Key key, this.heroTag}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: widget.heroTag,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/${widget.heroTag}.png',
                            )))),
              ),
            ),
            Positioned(
              top: 30,
              left: 8,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 30,
              right: 8,
              child: IconButton(
                icon: Icon(Icons.favorite, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Positioned(
              bottom: -8,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Text('Rp 1jt/bulan'),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: FlatButton(
                        padding: EdgeInsets.all(8),
                        color: Theme.of(context).accentColor,
                        child: Text('Berlangganan',
                            style: TextStyle(
                                fontFamily: 'Sans',
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height / 2 - 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text('9527',
                                        style: TextStyle(
                                            fontFamily: 'Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Text('Peminat',
                                        style: TextStyle(
                                            fontFamily: 'Sans', fontSize: 16))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text('3880',
                                        style: TextStyle(
                                            fontFamily: 'Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Text('Pengajar',
                                        style: TextStyle(
                                            fontFamily: 'Sans', fontSize: 16))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text('247',
                                        style: TextStyle(
                                            fontFamily: 'Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Text('Cabang',
                                        style: TextStyle(
                                            fontFamily: 'Sans', fontSize: 16))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/face.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Mike Wajosky',
                                    style: TextStyle(
                                        fontFamily: 'Sans',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                                'Klik berlangganan untuk ikut serta dalam kursus ini!',
                                style: TextStyle(
                                  fontFamily: 'Sans',
                                  color: Colors.black87,
                                  fontSize: 16,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
