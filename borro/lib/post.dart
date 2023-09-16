import 'package:flutter/material.dart';

void main() {
  runApp(post());
}

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

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
            'Post a Request',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
          backgroundColor: Color.fromRGBO(20, 66, 114, 1),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(24, 45, 24, 24),
            decoration: BoxDecoration(
              color: Color.fromRGBO(20, 66, 114, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                          // child: Text('Len'),
                          ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                          // child: Text('Den'),
                          ),
                    ),
                  ],
                )
              ],
            ),
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
