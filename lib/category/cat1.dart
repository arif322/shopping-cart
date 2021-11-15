import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPages extends StatefulWidget {
  static const String path = "CartPage";
  // final String? images;
  // final String? tags;

  // const CartPages({this.images, this.tags});

  @override
  _CartPagesState createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  List<String> cart = [
    "images/wel1.jpg",
    "images/wel2.jpg",
    "images/wel3.jpg",
    "images/wel4.jpg",
    "images/wel5.jpg",
    "images/wel6.jpg"
  ];
  List<String> name = [
    "smart watch",
    "Mobile Phone",
    "HeadPhone",
    "Ear phone",
    "Smart TV",
    "Speaker",
  ];
  List<String> size = [
    "M/L/XL",
    "IOS 11",
    "M/L/XL",
    "M/L/XL",
    "40/45/49",
    "A103/ D7",
  ];
  List<String> color = [
    "black",
    "Mat Black/Silver",
    "Black/Blue",
    "Black/Gray"
        "Black/Gray/Mat Black",
    "Black/Gray/Mat Black",
  ];

  List<String> price = [
    " 5000",
    "14000",
    "6000",
    "800",
    "48000/56000/680000",
    "1450/2000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CART",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.cancel,
              color: Colors.red,
            ),
          ),
          actions: [
            FlatButton(
              textColor: Colors.blue,
              onPressed: () {},
              child: Text(
                "Payment",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(cart[index]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "size :" + size[index],
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Color :",
                                //  color[index],

                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "BDT" + price[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black.withOpacity(1),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            FontAwesomeIcons.minus,
                                            size: 10,
                                            color: Colors.black.withOpacity(1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black.withOpacity(1),
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 10,
                                        color: Colors.black.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.teal,
                      height: 0,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Text("Sub Total"),
                        Text("5000"),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
