import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
enum SingingCharacter { lafayette, jefferson }
class AndroidDesgin extends StatefulWidget {
  const AndroidDesgin() ;
  _AndroidDesgin createState() => new _AndroidDesgin();

}

class _AndroidDesgin extends State<AndroidDesgin>
{
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool _checkbox = true;
  bool _checkboxListTile = false;
  String _radio_val="item1";


  @override
  initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text("AndroidDesgin",style: TextStyle(color:Colors.black,fontSize: 18.0,),),
        backgroundColor: Colors.amber,
        centerTitle: true,
        leading:
        Container(
            child:FlatButton(onPressed: (){
              setState(() {
              // Navigator.pop(context);
            });
              },
                child: Icon(Icons.arrow_back,color: Colors.black,))
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin:EdgeInsets.fromLTRB(12, 0,0, 0),
                  child: Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ) ,),


                Container(
                  margin:EdgeInsets.fromLTRB(10, 0,0, 0),
                  child:Text('item1',style: TextStyle(fontSize: 18.0) ,),
                ),

              ],
            ),

            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('item2',style: TextStyle(fontSize: 18.0) ,),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            ),
            Container(
              margin:EdgeInsets.fromLTRB(5, 0, 5, 0),
              child:Divider(
                color: Colors.grey,
              ) ,

            ),
            ListTile(
              title: const Text('item1'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    _radio_val='item1';
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('item2'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    _radio_val='item2';
                  });
                },
              ),
            ),
            Container(
              margin:EdgeInsets.fromLTRB(5, 0, 5, 0),
              child:Divider(
                color: Colors.grey,
              ) ,

            ),
            Container(
              margin:EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Text(_radio_val+ "of radio button is selected",style: TextStyle(color: Colors.blueAccent,fontSize: 20.0),) ,

            ),

          ],
        ),
      ),
    );


  }

}
