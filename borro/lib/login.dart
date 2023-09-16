import 'package:flutter/material.dart';

void main() {
  runApp(MyLogin());
}

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(10, 38, 71, 1),
        body: SingleChildScrollView(
          child: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/txt.png',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BORROW',
                          style: TextStyle(
                            fontFamily: 'EuphoriaScript',
                            fontWeight: FontWeight.w500,
                            fontSize: 65,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Stack(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/bg2.png',
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/bg1.png',
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                  child: Text(
                                    'Log in to your Account',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27),
                                  ),
                                  alignment: Alignment.center,
                                  // color: Colors.red,
                                  margin: EdgeInsets.fromLTRB(35, 150, 35, 0)),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(10, 38, 71, 1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: SizedBox(
                                  width: 310,
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/gog.png'),
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Login with Google',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
