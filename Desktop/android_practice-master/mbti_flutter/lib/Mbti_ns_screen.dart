import 'package:flutter/material.dart';
import 'package:myappajou/MBTI_NS.dart';
import 'package:myappajou/Mbti_tf_screen.dart';
import 'package:myappajou/chat.dart';
import 'package:myappajou/Sum_A.dart';
import 'package:myappajou/result_percentage.dart';

class Mbti_ns extends StatefulWidget {
  String E_I;
  Mbti_ns(this.E_I);
  @override
  _Mbti_nsState createState() => _Mbti_nsState();
}

class _Mbti_nsState extends State<Mbti_ns> {
  int sum_A = 0;
  int sum_B = 0;
  String N_S = "N";
  @override
  Widget build(BuildContext context) {
    for(int i=0; i<sum_a.length; i++){
      sum_a[i]=3;
      sum_b[i]=0;
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
                  itemCount: mbti_ns == null ? 0 : mbti_ns.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map comment_ = mbti_ns[index];
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
              N_S= "N";
              else
              N_S ="S";
              print(sum_a);
              print(sum_b);
              print(N_S);
              result_percentage[1] = (sum_A / (sum_A+sum_B) *100).round();
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (BuildContext context) {
              return Mbti_tf(widget.E_I, N_S);
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
