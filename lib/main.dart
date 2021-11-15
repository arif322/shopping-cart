import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_cart/category/cat1.dart';
// import 'package:shopping_cart/category/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CartPages(),
      // initialRoute: CartPage.path,
      // routes: {
      //   CartPage.path: (context) => CartPage(),
      //   ImagePage.path: (context) => ImagePage()
      // },
    );
  }
}
