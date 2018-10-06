import 'package:flutter/material.dart';
import 'package:portfolio/PortFolioScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final textController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(children: <Widget>[
              new Container(
                padding: EdgeInsets.all(0.0),
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [const Color(0xFFFFA726),const Color(0xffE91E63)],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      stops: [0.0,1.0],
                    )
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Image.asset("assets/profilepic.png", height: 300.0, width: 300.0,),
                    new SizedBox(height: 30.0,),
                    new Card(
                      elevation: 20.0,
                      margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                        
                        child: Column(
                          children: <Widget>[
                            TextField(
                             // controller: textController,
                              decoration: InputDecoration(
                                  hintText: "User Name",
                                  hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[120]),
                                  filled: true,
                                  prefixIcon: Icon(Icons.mail_outline, color: Colors.black,),
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0)

                              ),

                            ),
                            SizedBox(height: 10.0,),
                            TextField(
                              controller: textController,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                                  hintText: "Password",
                                  hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[120]),
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock, color: Colors.black,),
                                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,),
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0)

                              ),

                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Positioned(
                  left:129.0,
                  bottom: 90.0 ,
                  child:
                  RaisedButton(
                    
                    elevation: 20.0,
                    onPressed: (){
                      Navigator.of(context)
                          .pushReplacement(
                          MaterialPageRoute(
                              builder: (context)=>PortFolioScreen()
                          )
                      );
                      
                    },
                    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
                      color: Color(0xFFFFA726),
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                    child: Text("LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),),

                  )
              )
            ])
          ],
        ),

    );
  }
}
