import 'package:flutter/material.dart';

void main() {
  runApp(lend());
}

class lend extends StatelessWidget {
  const lend({Key? key}) : super(key: key);
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(10, 38, 71, 1),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('assets/img_3.png'),
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                ))
          ],
          title: Center(
              child: Text(
            'Lend Requests',
            style: TextStyle(fontSize: 23),
          )),
          backgroundColor: Color.fromRGBO(20, 66, 114, 1),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 29, 0, 0),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 24,
                  mainAxisExtent: 150,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(20, 66, 114, 1),
                      // color: Colors.orangeAccent,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Image.asset('assets/img_2.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('UserName',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      )),
                                ]),
                                Text(
                                  'an hour ago',
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img_1.png"),
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.95),
                                      BlendMode.dstATop)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7),
                                        child: Text(
                                          '1st Sem Books:',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 8),
                                        child: Text(
                                          '< Required',
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temr incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea rghtge ethtgherg commodo consequa...................... Read More',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.bookmark_add,
                                    color: Colors.blueGrey,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.send,
                                    color: Colors.blueGrey,
                                    size: 17,
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  );
                }),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color.fromRGBO(179, 179, 179, 0.4),
            currentIndex: 1,
            selectedItemColor: Colors.white,
            backgroundColor: Color.fromRGBO(20, 66, 114, 1),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.white,
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.white,
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                backgroundColor: Colors.white,
                label: 'person',
              ),
            ]),
      ),
    );
  }
}
