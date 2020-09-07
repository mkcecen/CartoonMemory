import 'package:flutter/material.dart';

import 'home.dart';

class Levels extends StatelessWidget {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red[100], Colors.grey[200]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonTheme(
            minWidth: width / 2,
            child: RaisedButton(
              onPressed: ()=>routePage(context, 6),
              animationDuration: Duration(seconds: 1),
              child: Text("3 X 2"),
              color: Colors.green[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
            ),
          ),
          size(),
          ButtonTheme(
            minWidth: width / 2,
            child: RaisedButton(
                onPressed: ()=>routePage(context, 8),
                animationDuration: Duration(seconds: 1),
                child: Text("4 X 2"),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red))),
          ),
          size(),
          ButtonTheme(
            minWidth: width / 2,
            child: RaisedButton(
                onPressed: ()=>routePage(context, 16),
                animationDuration: Duration(seconds: 1),
                child: Text("4 X 4"),
                color: Colors.green[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red))),
          ),
        ],
      ),
    );
  }

  Widget size() {
    return SizedBox(
      height: height / 7,
    );
  }

  routePage(BuildContext ctx, int type) {
    Navigator.push(
        ctx, MaterialPageRoute(builder: (context) => Home(type:type)));
  }
}
