import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.resultvalue,@required this.interpretation});
  final String bmiResult;
  final String resultvalue;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                textAlign: TextAlign.left,
                style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child:ReusableCard(
              colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(bmiResult.toUpperCase() ,textAlign:TextAlign.center,style:kValueStyle),
                Text(resultvalue, textAlign:TextAlign.center,style: kBMIStyle),
                Text(interpretation,textAlign:TextAlign.center,style:TextStyle(
                  fontSize: 22
                )),
              ],
            ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              ),
              ),
              color: Colors.red,
              width:double.infinity,
              margin: EdgeInsets.only(top:15),
              height:80,
            ),
          ),
        ],
      ),
    );
  }
}
