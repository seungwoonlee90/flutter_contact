import 'package:flutter/material.dart';
import 'nav.dart';

void main() {
  runApp( MaterialApp(
      home :MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState((){
              a++;
            });
            showDialog(context: context, builder: (context){
              return Dialog(child:
                Container(
                  height: 100,
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),),
                      Text("02123456",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.underline
                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Cancel",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.blue),),
                          Text("OK",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.blue),)
                        ],
                      )
                    ],
                  )));
            });
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
                              Text(a.toString())
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
    );
  }
}
