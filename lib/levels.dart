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
         commonButton(context, "Easy",6),
          size(),
                 commonButton(context, "Medium",12),

          size(),
                  commonButton(context, "Hard",16),

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
  Widget commonButton(BuildContext ctx,String type,int count){
    return  ButtonTheme(
            minWidth: width / 2,
            child: RaisedButton(
              onPressed: ()=>routePage(ctx, count),
              animationDuration: Duration(seconds: 1),
              child: Text(type),
              color: Colors.green[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
            ),
          );
  }
}
