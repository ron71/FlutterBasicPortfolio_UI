import 'package:flutter/material.dart';

class PortFolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _aboutAnil(name, job, description){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            ),
          ),
          Text(job,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
         Container(
           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
           constraints: BoxConstraints(
             maxWidth: MediaQuery.of(context).size.width-10,

           ),
             child: Text(description,
               textAlign: TextAlign.left,
               //overflow: TextOverflow.ellipsis,
               softWrap: true,
               style: TextStyle(
                 color: Colors.white,
                 //fontWeight: FontWeight.bold,
                 fontSize: 15.0,
               ),
             ),

         )
        ],
      );
    }


    _socialFollows(posts,followers,following){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Text(posts,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),),

                new Text("Posts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
            new Column(
              children: <Widget>[
                new Text(followers,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),),

                new Text("Followers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
            new Column(
              children: <Widget>[
                new Text(following,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),),

                new Text("Following",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ],
      );

    }


    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA726),
        centerTitle: true,
        title: Text("Profile", textAlign: TextAlign.center,),
        elevation: 10.0
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: <Widget>[

          //new Image.asset("assets/profilepic.png",height: 270.0, width: 270.0,alignment: Alignment(0.0, 100.0),),
          new Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Image.asset("assets/profilepic.png",height: 250.0, width: 280.0,alignment: Alignment(0.0, 100.0),),

                  new Container(

                    height: MediaQuery.of(context).size.height*0.552,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [const Color(0xFFFFA726),const Color(0xffE91E63)],
                          begin: FractionalOffset.topLeft,
                          end: FractionalOffset.bottomRight,
                          stops: [0.0,1.0],
                        )
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(width: 5.0,),
                        _socialFollows("671", "2.5m", "198"),
                        SizedBox(width: 20.0,),
                        _aboutAnil("Anil Kapoor", "Actor/Producer", '''An Indian actor and producer who has \nappeared in many Hindi-language \nfilms,as well as international films \nand television series. His career has \nspanned almost 40 years as an actor,\n and as a producer since 2005. He\nhas also won numerous awards in his\ncareer, including two National Film \nAwards and six Filmfare Awards in \nvaried acting categories. ''')
                      ],
                    ),
                  ),
                ],
              ),

              new Positioned(
                  left: 16.0,
                  bottom: 380.0,
                  child: FloatingActionButton(
                    onPressed: (){},
                    backgroundColor: const Color(0xFFE91E63),
                    elevation: 20.0,
                    child: Icon(Icons.add, size: 40.9,),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
