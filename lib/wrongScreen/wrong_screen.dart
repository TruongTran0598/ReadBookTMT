import 'package:flutter/material.dart';

class Wrong extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WrongScreen();
  }
}

class WrongScreen extends State<Wrong> {

  Widget getImgProHarryPotter() {
    AssetImage assetImageProHarry = AssetImage("images/Harry_Potter.jpg");
    Image imageProHaryPotter = Image(
      image: assetImageProHarry,
      height: 90,
      width: 60,
    );
    return Container(child: imageProHaryPotter,);
  }

  Widget starRate() {
    AssetImage assetImageStarRate = AssetImage("images/Harry_Potter.jpg");
    Image imageStarRate = Image(
      image: assetImageStarRate,
      height: 20,
      width: 20,
    );
    return Container(child: imageStarRate,);
  }

  Widget getWrongFace() {
    AssetImage assetImageWrongFace = AssetImage("images/Harry_Potter.jpg");
    Image imageWrongFace = Image(
      image: assetImageWrongFace,
      height: 50,
      width: 50,
    );
    return Container(child: imageWrongFace,);
  }

  Widget buttonRetry() {
    return Container(
        child: ButtonTheme(
          child: RaisedButton(
            child: Text(
              "Retry later"
            ),
            onPressed: (){

            },
          ),
        ),
    );
  }

  Widget textInforBook() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Harry Potter"
          ),
          Text(
            "J.K.Rowling"
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: starRate(),
                ),
                Container(
                  child: Text("4.5"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textWrong() {
    return Container(
      child: Column(
        children: <Widget>[
          getWrongFace(),
          Text(
            "So sorry."
          ),
          Text(
            "But can\'nt dowloald it right now."
          ),
          Text(
            "You can try again later"
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget> [
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: getImgProHarryPotter(),
                  ),
                  Container(
                    child: textInforBook(),
                  )
                ],
              ),
            ),

            Container(
              child: Column(
                children: <Widget>[
                  textWrong(),
                ],
              ),
            ),
            buttonRetry(),
          ],
        ),
      ),
    );
  }
}