// @dart=2.9
import 'dart:math';
import 'package:card_payment_ui/widgets/card_back.dart';
import 'package:card_payment_ui/widgets/card_front.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatefulWidget {
  const MyCardsPage({Key key}) : super(key: key);

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  double _rotationFactor = 0;
  TextEditingController _cardNumberController;
  String _cardNumber = "";

  _MyCardsPageState()
  {
    _cardNumberController = TextEditingController();
    
    _cardNumberController.addListener(() {
      _cardNumber = _cardNumberController.text;
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cards :)"),
      ),
      body: Center(
        child: Column(
          children: [
            Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(pi * _rotationFactor),
                origin: Offset(MediaQuery.of(context).size.width / 2, 0),
                child:
                    _rotationFactor < 0.5 ? CardFrontView(cardNumber: _cardNumber) : CardBackView()),
            Slider(
              onChanged: (double value) {
                setState(() {
                  _rotationFactor = value;
                });
              },
              value: _rotationFactor,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Card Number"
                    ),
                    controller: _cardNumberController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name on Card"
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "Expiry Date"
                        ),
                      ), flex: 2,),
                      SizedBox(width: 32,),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "CVV"
                        ),
                      ), flex: 2,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
