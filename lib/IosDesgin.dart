import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosDesgin extends StatefulWidget {
  const IosDesgin({Key? key}) : super(key: key);

  @override
  State<IosDesgin> createState() => _IosDesgin();
}

/// This is the private State class that goes with MyStatefulWidget.
class _IosDesgin extends State<IosDesgin> {
  bool isSwitched = true;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        middle: const Text('Sample Code'),
        leading: Container(
            child:FlatButton(onPressed: (){
              setState(() {
                // Navigator.pop(context);
              });
            },
                child: Icon(Icons.arrow_back_ios,color: Colors.black,))
        ),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 70 ,0, 0),
        child:
        Scaffold(
            body: new Column(
              children: [
                new Row(
                  children: [
                    new Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.blueAccent,
                      activeColor: Colors.blueAccent,
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(10, 0,0, 0),
                      child:Text('item1',style: TextStyle(fontSize: 18.0) ,),
                    ),
                  ],
                ),
                new Row(
                  children: [
                    new Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                          print(isSwitched2);
                        });
                      },
                      activeTrackColor: Colors.blueAccent,
                      activeColor: Colors.blueAccent,
                    ),

                    Container(
                      margin:EdgeInsets.fromLTRB(10, 0,0, 0),
                      child:Text('item2',style: TextStyle(fontSize: 18.0) ,),
                    ),

                  ],
                ),
                Container(
                  margin:EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child:Divider(
                    color: Colors.grey,
                  ) ,

                ),
                Container(
                  child:Text("Single Selection") ,

                ),
              ],
            )
        )
      ),
    );
  }
}
