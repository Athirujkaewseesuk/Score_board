import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

void main() {
  runApp(MyApp());
  //runApp(imageTeam());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black38
      ),
      //home: MainPage(),
      home: imageTeam(),

    );
  }
}


class imageTeam extends StatefulWidget {
  @override
  _imageTeamState createState() => _imageTeamState();

}

class _imageTeamState extends State<imageTeam> {
  final title = "ScoreDy";
  final Team_A_Name = "Team Name";
  final Team_B_Name = "Team Name";
  TextEditingController TeamA = TextEditingController(text: "");
  TextEditingController TeamB = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title:Text(title),
        centerTitle: true,
        titleTextStyle:
        TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),


      body: Builder(
        builder: (context)=> Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0,
                              top: 20.0),
                          child: CircleAvatar(
                            radius: 80,
                          ),
                        ),
                      ),],
                  ),



                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                        right: 20.0,
                        top: 20.0,
                      ),
                      child: CircleAvatar(
                        radius: 80,
                      ),
                    ),
                  ),],
              ),


              SizedBox(height: 30,),


              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 35.0,
                        right: 30,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          /*labelText: Team_A_Name,
                                    labelStyle: TextStyle(fontSize: 24,
                                        color: Colors.red,
                                        fontStyle: FontStyle.normal
                                    ),*/
                          hintText: "$Team_A_Name",
                          hintStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.red
                          ),
                          border: InputBorder.none,
                        ),
                        controller: TeamA,style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                      ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0,
                          left: 230.0
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          /*labelText: Team_B_Name,
                            labelStyle: TextStyle(fontSize: 24,
                                color: Colors.red,
                                fontStyle: FontStyle.normal
                            ),*/
                          hintText: "$Team_B_Name",
                          hintStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.indigo,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: 2,
                        controller: TeamB,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),],
              ),



            ],
          ),
        ),
      ),
    );
  }
}