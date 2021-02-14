import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(children: <Widget>[
          Text(
            'You did it !',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Text('Your score is : $resultScore',
              style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
          FlatButton(
            child: Text('Reset Quiz',
                style: TextStyle(color: Colors.blue, fontSize: 20)),
            onPressed: resetHandler,
          )
        ]));
  }
}
