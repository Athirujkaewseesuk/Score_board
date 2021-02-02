import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
      ),
      //home: MainPage(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final title = "basketball";
  File file;
  File file1;
  final background = "images/background1-White.png";
  final ProFile = 'images/profile.png';
  final Team_A_Name = "Team Name";
  final Team_B_Name = "Team Name";
  TextEditingController TeamA = TextEditingController(text: "");
  TextEditingController TeamB = TextEditingController(text: "");


  Future<void> chooseImage(ImageSource imageSource) async {
    try {
      var object = await ImagePicker.pickImage(source: imageSource);
      setState(() {
        file = object;

      });
    } catch (e) {}
  }

  Future<void> chooseImage1(ImageSource imageSource) async {
    try {
      var object = await ImagePicker.pickImage(source: imageSource);
      setState(() {
        file1 = object;

      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(background), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // AppBar(
              //   toolbarHeight: 70,
              //   backgroundColor: Colors.black45,
              //   title: Text(title,style: TextStyle(fontSize: 48,)),
              //   centerTitle: true,
              //   titleTextStyle: TextStyle(
              //     fontSize: 50,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,//ProFile
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.grey[600].withOpacity(0.7),
                              child: ClipOval(
                                child: SizedBox(
                                  width: 180.0,
                                  height: 180.0,
                                  child: file != null
                                      ? Image.file(file, fit: BoxFit.cover)
                                      : Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                              'images/profile.png',
                                              fit: BoxFit.fill),
                                        ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 70.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  size: 20.0,
                                  color: Colors.black45,
                                ),
                                onPressed: () {
                                  chooseImage(ImageSource.gallery);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: ("Team A Name"),
                          labelStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.indigo,
                              fontStyle: FontStyle.normal),
                          hintText: "$Team_A_Name",
                          hintStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                        controller: TeamB,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ],
                ),
              ]),

              SizedBox(
                height: 55.0,
              ),
              Text(
                "Time per Quarter",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "00:00",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 180.0,top:140.0,),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ("Team B Name"),
                      labelStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.red,
                          fontStyle: FontStyle.normal),
                      hintText: "$Team_B_Name",
                      hintStyle: TextStyle(
                        fontFamily: '',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                    controller: TeamA,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 70.0,left: 130.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              size: 20.0,
                              color: Colors.black45,
                            ),
                            onPressed: () {
                              chooseImage1(ImageSource.gallery);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.grey[600].withOpacity(0.7),
                              child: ClipOval(
                                child: SizedBox(
                                  width: 180.0,
                                  height: 180.0,
                                  child: file1 != null
                                      ? Image.file(file1, fit: BoxFit.cover)
                                      : Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                        'images/profile.png',
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ),
                        ),



                      ],
                    ),
                  ),



              ]),
            ],
          ),
        ),
      ),
    );
  }
}
