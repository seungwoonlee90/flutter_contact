import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color:Colors.black),
          title: Text("금호동 3가",
            style:TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          width: double.infinity,
          height: 200,
          margin: EdgeInsets.all(20),
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
        ),
        bottomNavigationBar: BottomAppBar(
          child :SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        ),
      ),
    );
  }
}
