import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "/SignUpScreen";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Mob_signupWidget - FRAME

    return Container(
        width: 400,
        height: 926,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 26, 29, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            top: -424,
            left: -418,
            child: Container(
              width: 915,
              height: 915,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 152, 91, 0.800000011920929),
                borderRadius: BorderRadius.all(Radius.elliptical(915, 915)),
              ),
            ),
          ),
          Positioned(
              top: -336,
              left: -208,
              child: Container(
                  width: 1238,
                  height: 765,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/Sl_022321_41020_021.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
            top: 211,
            left: 0,
            child: Container(
              width: 428,
              height: 664,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Positioned(
            top: 371,
            left: 43,
            child: Text(
              'example@gmail.com',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 353,
            left: 24,
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                border: Border.all(
                  color: Color.fromRGBO(167, 167, 167, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 334,
            left: 43,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 473,
            left: 43,
            child: Text(
              '6+ strong characters',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 454,
            left: 24,
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                border: Border.all(
                  color: Color.fromRGBO(167, 167, 167, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 608,
            left: 709,
            child: Image.asset(
              'assets/images/master/vector/google.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 433,
            left: 43,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(167, 167, 167, 1),
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 534,
            left: 65,
            child: Text(
              'I am at least 18 years old or of legal age in my country/state to register for financial services and I have reviewed the terms and conditions. I accept.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(167, 167, 167, 1),
                fontFamily: 'Manrope',
                fontSize: 14,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 538,
            left: 24,
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                ),
                color: Color.fromRGBO(196, 196, 196, 1),
                border: Border.all(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 701,
            left: 24,
            child: Container(
              width: 379,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                color: Color.fromRGBO(196, 196, 196, 1),
                border: Border.all(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 718,
            left: 111,
            child: Container(
              width: 205,
              height: 27,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 7,
                    left: 47,
                    child: Text(
                      'Sign up with Google',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 2.20,
                            left: 2.25,
                            child: Image.asset(
                              'assets/images/google-logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 785,
            left: 24,
            child: Text(
              'By pressing create an account, you confirm that you have  read and agree with our Terms of',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green.shade900,
                fontFamily: 'Manrope',
                fontSize: 16,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
              top: 888,
              left: 54,
              child: Container(
                  width: 319,
                  height: 22,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Already have  Pears Trade account ?  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 0,
                        left: 273,
                        child: Text(
                          'Log in',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 31,
              left: 0,
              child: Container(
                  width: 428,
                  height: 182,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(
                            2.2116446452002947e-9, -0.610738217830658),
                        end: Alignment(
                            0.610738217830658, -1.2663481374630692e-16),
                        colors: [
                          Color.fromRGBO(0, 0, 0, 1),
                          Color.fromRGBO(0, 0, 0, 0)
                        ]),
                  ))),
          Positioned(
              top: 149,
              left: 26,
              child: Text(
                'Enter your details to create an account.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 81,
              left: 24,
              child: Text(
                'Sign Up ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Manrope',
                    fontSize: 39,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 621,
              left: 24,
              child: Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(
                            -0.2862130403518677, -0.02256137877702713),
                        end: Alignment(
                            0.02256137505173683, -0.008380034938454628),
                        colors: [
                          Color.fromRGBO(0, 26, 29, 1),
                          Color.fromRGBO(0, 91, 61, 1),
                          Color.fromRGBO(0, 152, 91, 1)
                        ]),
                  ))),
          Positioned(
              top: 640,
              left: 141,
              child: Text(
                'Create an account',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 275,
              left: 40,
              child: Text(
                'Enter your full name ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 254,
              left: 24,
              child: Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(0, 152, 91, 1),
                      width: 1.5,
                    ),
                  ))),
          Positioned(
              top: 235,
              left: 48,
              child: Container(
                  width: 56,
                  height: 28,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Name   ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 152, 91, 1),
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ],
                          ),
                        )),
                  ]))),
          Positioned(
            top: 477,
            left: 362,
            child: Image.asset(
              'assets/images/master/vector/google.png',
              fit: BoxFit.contain,
            ),
          ),
        ]));
  }
}
