import 'package:flutter/material.dart';
import 'package:myappajou/Sum_A.dart';

class Chat extends StatefulWidget {
  final String comment;
  final int index;
  Chat({
    Key key,
    @required this.comment,
    @required this.index,
  }) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int result_A = 0;
  int result_B = 0;
  int check = 0;
  int ischecked = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 120,
                        child: ListView(
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              "${widget.comment}",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("동의",
                                  style: TextStyle(fontSize: 10)
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 0,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 3;
                                        sum_b[widget.index] = 0;
                                      }
                                    });
                                  },
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 1,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 2;
                                        sum_b[widget.index] = 0;
                                      }
                                    });
                                  },
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 2,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 1;
                                        sum_b[widget.index] = 0;
                                      }
                                    });
                                  },
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 3,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 0;
                                        sum_b[widget.index] = 1;
                                      }
                                    });
                                  },
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 4,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 0;
                                        sum_b[widget.index] = 2;
                                      }
                                    });
                                  },
                                ),
                                Radio(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: 5,
                                  groupValue: check,
                                  activeColor: Colors.red,
                                  onChanged: (int value) {
                                    setState(() {
                                      check = value;
                                      ischecked++;
                                      if(ischecked != 0) {
                                        sum_a[widget.index] = 0;
                                        sum_b[widget.index] = 3;
                                      }
                                      print(result_A);
                                    });
                                  },
                                ),
                                Text("비동의",
                                    style: TextStyle(fontSize: 10)
                                )
//                          Radio(
//                            value: SingingCharacter.lafayette,
//                            groupValue: _character,
//                            onChanged: (SingingCharacter value) {
//                              setState(() {
//                                _character = value;
//                              });
//                            },
//                          ),

                              ],
                            )
//                      CircularCheckBox(
//                        value: someBooleanValue,
//                        materialTapTargetSize: MaterialTapTargetSize.padded,
//                        onChanged: (bool x){
//                          someBooleanValue = !someBooleanValue;
//                        },
//                      )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
        ],
      ),
    );

  }

//  void abc() {
//    setState(() {
//      widget.result+=3;
//      print(widget.result);
//    });
//  }
}
