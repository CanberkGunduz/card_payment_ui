// @dart=2.9
import 'package:flutter/material.dart';

class CardFrontView extends StatelessWidget {
  final String cardNumber;
  CardFrontView({Key key, this.cardNumber}) : super(key: key) {
    _formattedCardNumber = this.cardNumber.padRight(16, "*");
    _formattedCardNumber = _formattedCardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }

  String _formattedCardNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/visa.png")),
              SizedBox(
                height: 32,
              ),
              Text(
                _formattedCardNumber,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(color: Colors.black12, offset: Offset(2, 1))
                    ]),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Card Holder"),
                      Text(
                        "Canberk Gündüz",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expiry"),
                      Text(
                        "10/24",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
