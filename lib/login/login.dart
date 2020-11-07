import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreen();
  }
}

class LoginScreen extends State<Login> {
  Widget getLoginImage() {
    AssetImage assetLoginImage = AssetImage('images/image_login.jpg');
    Image loginImage = Image(
      image: assetLoginImage,
      width: 320,
      height: 180,
    );

    return Container(child: loginImage,);
  }

  Widget getLogoFacebook(){
    AssetImage assetLogoFacebookImage = AssetImage('images/logo_facebook.png');
    Image imageLogoFacebook = Image(
      image: assetLogoFacebookImage,
      width: 47,
      height: 47,
    );
    return Container(child: imageLogoFacebook,);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 170),
                child: getLoginImage(),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 40, right: 30, left: 30),
                child: ButtonTheme(
                  height: 55,
                  minWidth: 200,
                  child: RaisedButton(
                    elevation: 6,
                    color: Color(0xFF4C71CF),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: getLogoFacebook(),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Continue with Facebook',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                              decoration: TextDecoration.none,
                            ),
                            textScaleFactor: 1.3,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {

                    },
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  ),
                )
              ),
              Container(
                //padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Just one more step to get your book!",
                  style: TextStyle(
                    fontFamily: 'HindSiliguri',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF666666),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Text(
                'Login with Facebook and dowload your free book.',
                style: TextStyle(
                  fontFamily: 'HindSiliguri',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF666666),
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
