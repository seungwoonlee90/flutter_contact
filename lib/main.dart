import 'package:flutter/material.dart';
import 'nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        appBar: AppBar(
          leading: Icon(Icons.menu, color:Colors.black),
          title: Text("금호동 3가",
            style:TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (c, i){
              return Container(
                width: double.infinity,
                height: 150,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network('https://mdl.artvee.com/ft/12140po.jpg'),
                    Container(
                      width: 150,
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("캐논 DSLR 100D",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text("성동구 행당동",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text("210,000원",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite_border),
                              Text("4")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
        bottomNavigationBar: BottomNav()
      ),
    );
  }
}
