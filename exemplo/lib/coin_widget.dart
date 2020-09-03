import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final Color backgroundColor;
  final String currencyAbbreviation;
  final String coinDescription;
  final String currencyValue;
  final String value;
  final String initials;

  const Coin({Key key,
    this.backgroundColor,
    this.currencyAbbreviation,
    this.coinDescription,
    this.currencyValue,
    this.value,
    this.initials}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4.8),
      ),
      padding: EdgeInsets.all(15),
      height: 70,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0x40FFFFFF),
            ),
            height: 38,
            width: 38,
            child: Center(
              child: Text(
                initials,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
            ),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(currencyAbbreviation, style: TextStyle(color: Colors.white, fontSize: 17),),
                  SizedBox(width: 10,),
                  Text(coinDescription, style: TextStyle(color: Color(0X80FFFFFF), fontSize: 17),),
                ],
              ),
              Text(currencyValue, style: TextStyle(color: Colors.white, fontSize: 17),),
            ],
          ),
          Spacer(),
          Text(value, style: TextStyle(color: Colors.white, fontSize: 18),),
        ],
      ),
    );
  }
}