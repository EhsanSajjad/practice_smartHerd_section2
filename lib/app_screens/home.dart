import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 45.0, right: 10.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        // width: 300.0,
        // height: 100.0,
        // margin: EdgeInsets.all(50.0),
        // padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Bolaka :',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'from Dhaka to Chittagong at 02:00 pm',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'China Southern:',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'from Dhaka to Kunming at 02:00 pm',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            FlightImageAsset(),
            FlightBookButton(),
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plan1.png');
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 200.0,
    );
    return Container(
      // padding: EdgeInsets.only(top: 10.0),
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: 450.0,
      height: 40.0,
      child: RaisedButton(
          color: Colors.red[50],
          child: Text(
            'Book your flight',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
          elevation: 6.0,
          onPressed: () {
            bookFlight(context);
          }),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Flight booked successfully'),
      content: Text('Have a pleasant flight'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
    // or,
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) => alertDialog
    // );
  }
}
