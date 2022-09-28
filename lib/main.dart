import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  int value = 1;
  setState(Function() value) {
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Scaffold(
          backgroundColor: Color(0xff121212),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 240,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/t_shirt.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 65,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff353535),
                          splashColor: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'S',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 65,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff353535),
                          splashColor: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'L',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 65,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff353535),
                          splashColor: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'M',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 65,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff353535),
                          splashColor: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'XL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Audiowide',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 65,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff353535),
                          splashColor: Colors.red,
                          onPressed: () {},
                          child: Text(
                            '2XL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Belgium EURO',
                style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'Audiowide',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '20/21 Away by Adidas',
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 10,
                    fontFamily: 'Audiowide',
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rate(
                    iconSize: 30,
                    color: Colors.red,
                    allowHalf: true,
                    allowClear: true,
                    initialValue: 4,
                    readOnly: false,
                    onChange: (value) => print(value),
                  ),
                  Text(
                    '4.0',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Audiowide',
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Container(
                    color: Color(0xff353535),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: FloatingActionButton(
                              splashColor: Colors.redAccent,
                              backgroundColor: Color(0xffe6323e),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onPressed: () {
                                setState(() {
                                  value--;
                                });
                              },
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            value.toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            child: FloatingActionButton(
                              splashColor: Colors.redAccent,
                              backgroundColor: Color(0xffe6323e),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onPressed: () {
                                setState(() {
                                  value++;
                                });
                              },
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Audiowide',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Material :',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Audiowide',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              ' Polyester',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.grey,
                                  fontFamily: 'Audiowide',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Shipping :',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Audiowide',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              ' In 5 to 6 Days',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.grey,
                                  fontFamily: 'Audiowide',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Returns :',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Audiowide',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              ' Within 20 Days',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.grey,
                                  fontFamily: 'Audiowide',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffe6323e),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$89',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Audiowide',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
