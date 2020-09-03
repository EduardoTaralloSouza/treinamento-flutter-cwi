import 'package:exemplo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_widget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: coinBackgroundColor,
        elevation: 0,
        title: Text(
          'Current Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
      body: Container(
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: double.infinity,
        width: double.infinity,
        color: coinBackgroundColor,
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 55, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('BALANCE',style: TextStyle(color: Color(0X80FFFFFF), fontSize: 15),),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Text('\$103,463.59', style: TextStyle(color: Colors.white, fontSize: 34),),
                    Text('.59', style: TextStyle(color: greenLightColor, fontSize: 34),),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: <Widget>[
                    Text('+28.20%', style: TextStyle(color: greenLightColor, fontSize: 15),),
                    SizedBox(width: 15,),
                    Text('today', style: TextStyle(color: Color(0X80FFFFFF), fontSize: 15),),
                  ],
                ),
                SizedBox(height: 37,),
                Row(
                  children: <Widget>[
                    Text('Your coins', style: TextStyle(color: Colors.white, fontSize: 17),),
                    Spacer(),
                    FlatButton(
                      padding: EdgeInsets.only(left: 50),
                      onPressed: () {print('plus pressed');},
                      child: Text('+', style: TextStyle(color: greenLightColor, fontSize: 60),),
                    ),
                  ],
                ),
                Coin(
                  initials: 'B',
                  currencyAbbreviation: 'BTC',
                  coinDescription: 'Bitcoin',
                  currencyValue: '\$6730.49',
                  value: '6.20',
                  backgroundColor: pinkColor,
                ),
                SizedBox(height: 15,),
                Coin(
                  initials: 'E',
                  currencyAbbreviation: 'ETH',
                  coinDescription: 'Ethereum',
                  currencyValue: '\$490.26',
                  value: '18.05',
                  backgroundColor: purpleColor,
                ),
                SizedBox(height: 15,),
                Coin(
                  initials: 'L',
                  currencyAbbreviation: 'LTC',
                  coinDescription: 'Litecoin',
                  currencyValue: '\$130.31',
                  value: '51.80',
                  backgroundColor: orangeColor,
                ),
                SizedBox(height: 15,),
                Coin(
                  initials: 'X',
                  currencyAbbreviation: 'XRP',
                  coinDescription: 'Ripple',
                  currencyValue: '\$0.49',
                  value: '819k',
                  backgroundColor: greenColor,
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

