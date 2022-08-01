import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pears_trade/helpers/custom_route.dart';
import 'package:pears_trade/pallete/deepBlue.dart';
import 'package:pears_trade/screens/auth_screen.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  AnimationController _controllerBh;
  AnimationController _controllerAst;

  @override
  void initState() {
    // TODO: implement initState
    _controllerBh =
        AnimationController(vsync: this, duration: Duration(minutes: 3))
          ..repeat();
    _controllerAst =
        AnimationController(vsync: this, duration: Duration(minutes: 15))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controllerBh.dispose();
    _controllerAst.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 26, 29, 1),
                  Color.fromRGBO(0, 91, 61, 1),
                  Colors.black.withOpacity(0.5),
                  Color.fromRGBO(0, 26, 29, 1),
                  Color.fromRGBO(0, 152, 91, 1)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [1, 1, 1, 1, 0],
              ),
            ),
          ),
          const Center(),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: deviceSize.height * 0.61,
                  ),
                  child: Text(
                    'Pears Trade',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  //color: Colors.white.withOpacity(0.3),
                  margin: const EdgeInsets.only(top: 10),
                  width: 350,
                  child: Text(
                    "Pears Trade is a Smart Trading Application that is designed to perform "
                    "Historical Back Testing on Pair of Stocks and smart analytics which"
                    " would help users make the right decisions while investing!",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        color: const Color(0xffBABABA),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  // color: Colors.green,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                        CustomRoute(builder: (ctx) => AuthScreen())),
                    //Navigator.of(context).pushNamed(AuthScreen.routeName),

                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(199, 50),
                        //primary: const Color(0xffC65466),
                        primary: DeepBlue.kToDark,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get started',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedBlackHole(BuildContext context, Size deviceSize) {
    return AnimatedBuilder(
      animation: _controllerBh,
      builder: (_, ch) {
        return Transform.rotate(
          angle: _controllerBh.value * 2 * pi,
          child: ch,
        );
      },
      child: Image.asset(
        '',
        width: 460,
        height: 420,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildTopAnimatedAsteroid(BuildContext context, Size deviceSize) {
    return AnimatedBuilder(
      animation: _controllerAst,
      builder: (_, ch) {
        return Transform.rotate(
          angle: -_controllerAst.value * 2 * pi,
          child: ch,
        );
      },
      child: Image.asset(
        '',
        width: 500,
        height: 180,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildBottomAnimatedAsteroid(BuildContext context, Size deviceSize) {
    return AnimatedBuilder(
      animation: _controllerAst,
      builder: (_, ch) {
        return Transform.rotate(
          angle: _controllerAst.value * 10 * pi,
          child: ch,
        );
      },
      child: Image.asset(
        '',
        width: 500,
        height: 180,
        fit: BoxFit.cover,
      ),
    );
  }
}
