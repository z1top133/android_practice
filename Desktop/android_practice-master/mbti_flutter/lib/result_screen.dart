import 'package:flutter/material.dart';
import 'package:myappajou/mbti_result.dart';
import 'package:myappajou/result_percentage.dart';
import 'package:percent_indicator/percent_indicator.dart';

class result_screen extends StatefulWidget {
  String E_I;
  String N_S;
  String T_F;
  String J_P;

  result_screen(this.E_I, this.N_S, this.T_F, this.J_P);

  @override
  _result_screenState createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {
  String mbti_keyword;
  String mbti_comment;

  @override
  Widget build(BuildContext context) {
    for(int i=0; i<mbti_result.length; i++){
      Map result = mbti_result[i];
      if(widget.E_I + widget.N_S + widget.T_F + widget.J_P==result['mbti']){
        mbti_keyword = result['keyword'];
        mbti_comment = result['comment'];
      }
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "결과"
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.edit,
              size: 24.0,
            ),
            onPressed: () {
//                Navigator.of(context).push(
//                  MaterialPageRoute(
//                    builder: (BuildContext context) {
//                      return Notifications();
//                    },
//                  ),
//                );
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                "당신의 성격 유형은 " + widget.E_I + widget.N_S + widget.T_F + widget.J_P+"입니다."
                ,style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Text(result_percentage[0].toString()+ "%"),
                          Text("내향형"),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 120.0,
                      lineHeight: 10.0,
                      percent: result_percentage[1]/100,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Text((100-result_percentage[0]).toString()+ "%"),
                          Text("외향형"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Text(result_percentage[1].toString()+ "%"),
                          Text("직관형"),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 120.0,
                      lineHeight: 10.0,
                      percent: result_percentage[0]/100,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                            child: Text((100-result_percentage[1]).toString()+ "%"),
                          ),
                          Text("현실주의형"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(75.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(28.0, 0.0, 0.0, 0.0),
                            child: Text(result_percentage[2].toString()+ "%"),
                          ),
                          Text("원칙주의형"),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 120.0,
                      lineHeight: 10.0,
                      percent: result_percentage[2]/100,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                            child: Text((100-result_percentage[2]).toString()+ "%"),
                          ),
                          Text("이성적 사고형"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(102.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Text(result_percentage[3].toString()+ "%"),
                          Text("탐색형"),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 120.0,
                      lineHeight: 10.0,
                      percent: result_percentage[3]/100,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Text((100-result_percentage[3]).toString()+ "%"),
                          Text("계획형"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(child: Text(widget.E_I + widget.N_S + widget.T_F + widget.J_P+"형")),
            SizedBox(height: 10.0),
            Center(child: Text('$mbti_keyword')),
            SizedBox(height: 10.0),
            Center(child: Text('$mbti_comment')),
          ],
        ),
      ),
    );
  }
}
