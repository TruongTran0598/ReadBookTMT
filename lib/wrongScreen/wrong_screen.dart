import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrong extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WrongScreen();
  }
}

class WrongScreen extends State<Wrong> {
  //---Image--------------------------------------------------------------
  Widget _showImgProHarryPotter() {
    AssetImage assetImageProHarry = AssetImage("images/Harry_Potter.jpg");
    Image imageProHaryPotter = Image(
      image: assetImageProHarry,
      height: 180,
      width: 110,
      fit: BoxFit.fill,
    );

    return Container(child: imageProHaryPotter,);
  }

  //---image cover
  Widget _showImgCoverHarryPotter() {
    AssetImage assetImageProHarry = AssetImage("images/Harry_Potter.jpg");
    Image imageProHaryPotter = Image(
      image: assetImageProHarry,
      fit: BoxFit.cover,
    );
    return Container(child: imageProHaryPotter,);
  }

  Widget getSadFaceWrong (){
    AssetImage assetImageSadWrong = AssetImage("images/sad_face_wrong.png");
    Image imageSadWrong = Image(
      image: assetImageSadWrong,
      height: 90,
      width: 90,
    );
    return Container(child: imageSadWrong,);
  }

  Widget starRate() {
    AssetImage assetImageStarRate = AssetImage("images/star_rate.png");
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

  //---Image--------------------------------------------------------------

  Widget _renderHeaderScreen() => Stack(
    children: <Widget> [
      // Positioned(
      //   child: _showImgCoverHarryPotter(),
      // ),

      Positioned(
        top: 120,
        left: 40,
        child: Container(
          decoration: BoxDecoration (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Colors.indigo,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          child: _showImgProHarryPotter(),
        )
      ),

      Positioned(
        top: 200,
        left: 180,
        child: Text(
          "Harry Potter",
          style: TextStyle (
              color: Colors.blue,
              fontSize: 27
          ),
        ),
      ),

      Positioned(
        top: 235,
        left: 180,
        child: Text(
          "J.K.Rowling",
          style: TextStyle (
              color: Colors.blue,
          ),
        ),
      ),

      Positioned(
        top: 260,
        left: 180,
        child: Container(
          child: Row(
            children: <Widget>[
              starRate(),
              SizedBox(width: 7,),
              Text("4.5"),
            ],
          ),
        ),
      )
    ],
  );

  Widget _showButtonRetry() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ButtonTheme(
        child: SizedBox(
          width: double.infinity,
          child: RaisedButton(
            child: Text(
              "Retry later",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            onPressed: (){

            },
          ),
        )
      ),
    );
  }

  Widget _showTextWrong() {
    return Container(
      child: Column(
        children: <Widget>[
          getSadFaceWrong(),
          SizedBox(height: 15,),
          Text(
            "So sorry.",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          Text(
            "But can\'nt dowloald it right now.",
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
          Text(
            "You can try again later",
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Expanded(
            flex: 3,
            child: _renderHeaderScreen(),
          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: _showTextWrong(),
            ),
          ),

          Expanded(
            child: _showButtonRetry(),
          ),
        ],
      ),
    );
  }
}