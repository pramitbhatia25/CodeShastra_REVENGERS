import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:revengers/screens/artist/artist_login.dart';
import 'package:revengers/screens/user/user_login.dart';
import 'package:revengers/widgets/roundbutton.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red[400],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.orangeAccent,
                Colors.deepOrange,
                Colors.orangeAccent,
                Colors.red
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              const Text('Revengers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontFamily: 'Mogra',
                  )),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Lottie.asset('../assets/lottie/continuePage.json',
              //       height: 150),
              // ),
<<<<<<< HEAD
              Lottie.asset("assets/lottie/artistPage.json", height: 200),
              SizedBox(height: 40),
=======
              Lottie.asset('assets/lottie/artistPage.json',
                  height: 200.0), //lottie
>>>>>>> 5a93759f18347b3cc2aa8a18c9547b8e9a0cd7be
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 40.0, right: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(User_Login.routeName);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, bottom: 15),
                                    child: Text('Enter As User',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    primary: Colors.orange[100],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 40.0, right: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(Artist_Login.routeName);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, bottom: 15),
                                    child: Text('Enter As Artist',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    primary: Colors.orange[100],
                                  )),
                            ),
                          ],
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
    );
  }
}
