// @dart=2.9
import 'dart:math';
import 'package:flutter/material.dart';

class CardBackView extends StatelessWidget {
  const CardBackView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: Container(
        width: 500,
        height: 300,
        color: Colors.white,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                height: 60,
                color: Colors.black87,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 30,
                          width: 200,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "339",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
