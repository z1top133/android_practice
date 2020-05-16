import 'package:flutter/material.dart';
import 'package:myappajou/MBTI_JP.dart';
import 'package:myappajou/Sum_A.dart';
import 'package:myappajou/chat.dart';
import 'package:myappajou/result_percentage.dart';
import 'package:myappajou/result_screen.dart';

class Mbti_jp extends StatefulWidget {

  final String E_I;
  final String N_S;
  final String F_T;
  Mbti_jp(this.E_I, this.N_S, this.F_T);

  @override
  _Mbti_jpState createState() => _Mbti_jpState();
}

class _Mbti_jpState extends State<Mbti_jp> {
  int sum_A = 0;
  int sum_B = 0;
  String P_J = "P";
  @override
  Widget build(BuildContext context) {
    for(int i=0; i<sum_a.length; i++){
      sum_a[i]=3;
      sum_b[i]=0;
    }
    sum_a[7]=0;
    sum_b[7]=0;
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
              "성격 유형검사"
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
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: ListView(
            children: <Widget>[
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: mbti_jp == null ? 0 : mbti_jp.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map comment_ = mbti_jp[index];
                    return Chat(
                        comment: comment_['comment'],
                        index: index
                    );
                  }),
              FlatButton(
                child: Text("다음->"),
                    onPressed: () {
              for(int i=0; i<sum_a.length; i++){
              sum_A += sum_a[i];
              sum_B += sum_b[i];
              }
              if(sum_A>sum_B)
              P_J= "P";
              else
              P_J ="J";
              print(sum_a);
              print(sum_b);
              print(P_J);
              result_percentage[3] = (sum_A / (sum_A+sum_B) *100).round();
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (BuildContext context) {
              return result_screen(widget.E_I, widget.N_S, widget.F_T, P_J);
              },
              ),
              );
              },
              ),
            ],
          ),
        ));
  }
}
