import 'package:flutter/material.dart';

class detilse extends StatefulWidget {
  const detilse({Key? key}) : super(key: key);

  @override
  _detilseState createState() => _detilseState();
}

class _detilseState extends State<detilse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //debugShowCheckedModeBanner: false,
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      splashColor: Colors.black12,
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                        splashColor: Colors.black12,
                        icon: const Icon(Icons.menu),
                        color: Colors.black,
                        onPressed: () {})
                  ]),
              Image.network(
                'https://i.pinimg.com/originals/a6/61/89/a66189b0cd0ee360339d5a94505f64d7.jpg',
                width: 250,
                height: 280,
              ),
              Text('yves saint laurent',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
              Text('Suzy Menkes',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[   Container(
                    width: 100,
                    child: Wrap(
                      children: List<Widget>.generate(5, (int index) {
                        return Icon(Icons.star,size: 20, color: Colors.yellow,);
                      }),
                    ),
                  ),
                     SizedBox(width: 5,),
                     Text('4.5 / 5.0',
                   style: TextStyle(
                     fontSize: 15,
                     color: Colors.black45,
                     fontWeight: FontWeight.w700,
                     fontStyle: FontStyle.normal,
                   )),
               ]),
              Container(
                  width: 300,
                  child: Text(
                      'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
                      maxLines: 4,
                      style: TextStyle(
                        //letterSpacing: 8,
                        wordSpacing: 3,
                        fontSize: 14,
                        color: Colors.black38,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ))),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        //padding: const EdgeInsets.all(10),
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,children: [
                            const Icon(Icons.filter_list,
                                color: Colors.black),
                            Text('Preview',
                                style: TextStyle(color: Colors.black))
                          ]),
                        )),
                    Container(
                      //padding: const EdgeInsets.all(10),
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,children: [
                        const Icon(Icons.chat_outlined, color: Colors.black),
                        Text('Reviews',  style: TextStyle(color: Colors.black))
                      ]),
                    ),)
                  ]),
                  Container(
                    //padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white10,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        child:
                              Text('Buy Now for \$46.99',
                                  style: TextStyle(color: Colors.white))
                      )),
            ])));
  }
}
