import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detils.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                title: const Text("Hi.Ali!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),

                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {},
                  ), //IconButton
                ],

                backgroundColor: Colors.white,
                elevation: 0,
                leading: ClipRRect(

                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/c4d9/e1ae/125ec28e83bbbf9e1ff68378c3d4e698?Expires=1669593600&Signature=L5yoc3jhE5S--s4-tpd8kXXM5RuRCqSsxPeD6~~XdGxJ2bLjg27oI00y2fmIrj7qlBnoEb6zVRcenz3iU8bCAM4msAGIdl7CnIJYUU4B7mb6CNRJ1pzYK52XPPM~jKv3nn6NPzQoYj-TtrupbYtoFyLVngy-fyS3mm8OeX3fNMRgVxDcqkmA1iVZ2Oj5T7QsbUp-5ESh0oNeH3w7Ysce7lv2yvN9WaeN-YghOUSo-MsBjkBm9NE7HRK9oayG5k9BwGRmEqlFirhNyTPI4aI5MBw3TwZfslyOBWpbfzGSxrRHr5mRhkk456nxcO55OmkEQ1mOARZmU-z1Xu2WdUGqpQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                      height: 10,
                      width: 10,
                    ))
            ),

            //AppBar
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Book List',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(children: [
                              ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) =>  detilse ()));
                              },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,),
                          child: customContainer(
                                imgeurl:
                                    "https://i.pinimg.com/originals/a6/61/89/a66189b0cd0ee360339d5a94505f64d7.jpg",
                                namebook: "yves saint laurent",
                                namewriter: "Suzy Menkes",
                                price: "\$46.99")),
                          ElevatedButton(
                          onPressed: () { Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) =>  detilse ()));},
                          style: ElevatedButton.styleFrom(
                          primary: Colors.white,),
                          child:customContainer(
                                imgeurl:
                                    "https://th.bing.com/th/id/OIP.8memnX72KG-Ffmmk9KV3CQHaLN?pid=ImgDet&rs=1",
                                namebook: "the book of signs",
                                namewriter: "Rudolf koch",
                                price: "\$99.99")
                          )]);
                        })),
              ],
            )));
  }
}

Widget customContainer(
    {required String? imgeurl,
    required String? namebook,
    String? namewriter,
    String? price}) {
  return Container(

    width: double.infinity,
    height: 140,
    //color: Colors.greenAccent,
    child: Row(children: [
      Image.network(
        imgeurl!,
        width: 100,
        height: 130,
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(namebook!,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
            Text(namewriter!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
            Text(price!,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
                Container(
                  width: 100,
                  child: Wrap(
                    children: List<Widget>.generate(5, (int index) {
                      return Icon(Icons.star,size: 20, color: Colors.yellow,);
                    }),
                  ),
                ),

          ]))
    ]),
  );
}
