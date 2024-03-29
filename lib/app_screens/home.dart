import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Spice Jet",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic)),
                    ),
                    Expanded(
                      child: Text("From Mumbai to Bangalore via New Delhi",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("SriLankan Air Lines",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic)),
                    ),
                    Expanded(
                      child: Text("From Mumbai to Bangalore via New Delhi",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic)),
                    )
                  ],
                ),
                FlightImageAsset(),
                BookFlightButton()
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =
        AssetImage('images/89bcca07e2169b9eef3a5edea6ec61f3.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(child: image);
  }
}

class BookFlightButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700),
        ),
        elevation: 6.0,
        onPressed: () {
          bookFlight(context);
        },
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
