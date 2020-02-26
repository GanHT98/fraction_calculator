import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _acontroller = TextEditingController();
  final TextEditingController _bcontroller = TextEditingController();
  final TextEditingController _ccontroller = TextEditingController();
  final TextEditingController _dcontroller = TextEditingController();
  final TextEditingController _econtroller = TextEditingController();
  final TextEditingController _fcontroller = TextEditingController();
  int answerup=0,answerdown=0;
  int result,answer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: const Color(0xFFF0F4C3),
        appBar: AppBar(
          title: Text('Fraction Calculator'),
        ),
        body: Center(
          child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 120, 30, 0),
                            child: TextField(
                                controller: _acontroller,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.numberWithOptions(),
                                style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Num1",
                        fillColor: Colors.white70),
                           )
                    )  
                ),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 120, 30, 0),
                            child: TextField(
                                controller: _ccontroller,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.numberWithOptions(),
                                style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Num2",
                        fillColor: Colors.white70),
                             )
                        ),
                ),
                   Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 120, 30, 0),
                            child: TextField(
                              controller: _econtroller,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFE082)),
                             )
                        ),
                ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13.0),
                            child: Container(
                              height: 5.0,
                              width: 100.0,
                              color: Colors.black,
                            ))),
                    Text("+", style: TextStyle(fontSize: 35)),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            child: Container(
                              height: 5.0,
                              width: 100.0,
                              color: Colors.black,
                            ))),
                    Text("=", style: TextStyle(fontSize: 35)),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            child: Container(
                              height: 5.0,
                              width: 100.0,
                              color: Colors.black,
                            )))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 30, 100),
                            child: TextField(
                                controller: _bcontroller,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.numberWithOptions(),
                                style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Deno1",
                        fillColor: Colors.white70),
                            )
                  ),
                ),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 30, 100),
                            child: TextField(
                                controller: _dcontroller,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.numberWithOptions(),
                                style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Deno2",
                        fillColor: Colors.white70),
                            )
                  ),
                ),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 30, 100),
                            child: TextField(
                              controller: _fcontroller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.numberWithOptions(),
                              style: new TextStyle(
                        fontSize: 22.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFE082)),
                             )
                        ),
                ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Padding( 
                    padding: EdgeInsets.all(5),
                     child: RaisedButton(  
                        child: Text("+"), 
                    onPressed:(){
                      _calculate();
                    },
                    )
                  ),
                Padding( 
                    padding: EdgeInsets.all(10),
                     child: RaisedButton( 
                  onPressed: (){
                    reset();
                  },
                  child: new Text("Reset")
                    )
                  ) 
                  ]
              )]
              ),
             )
            )
          );
                            
                      }
                      void _calculate() {
                        setState(() {
                          int a = int.parse(_acontroller.text);
                          int b = int.parse(_bcontroller.text);
                          int c = int.parse(_ccontroller.text);
                          int d = int.parse(_dcontroller.text);
                          result = (a*d)+(b*c);
                          answer = (b*d);
                          _econtroller.text ="$result";
                          _fcontroller.text ="$answer";
                    
                        });
                          
                        }
                        void reset() {
                        setState(() {
                        _acontroller.text ="";
                        _bcontroller.text ="";
                        _ccontroller.text ="";
                        _dcontroller.text ="";
                        _econtroller.text ="";
                        _fcontroller.text ="";
                      });
                    }
                  }
