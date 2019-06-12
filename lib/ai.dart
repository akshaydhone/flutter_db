import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_firebase/ShowDataPage.dart';

void main() => runApp(new MaterialApp(home: new AIPage()));

class AIPage extends StatefulWidget {
  static String tag = 'ai-page';
  @override
  _AIPageState createState() => _AIPageState();
}

class _AIPageState extends State<AIPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name, profession, message,feedback;


  List<DropdownMenuItem<String>> items = [
    new DropdownMenuItem(
      child: new Text('Student'),
      value: 'Student',
    ),
    new DropdownMenuItem(
      child: new Text('Professor'),
      value: 'Professor',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Firebase Database'),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Form(
            key: _key,
            autovalidate: _autovalidate,
            child: FormUI(),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Flexible(
              child: new TextFormField(
                decoration: new InputDecoration(hintText: 'Name'),

                validator: validateName,
                onSaved: (val) {
                  name = val;

                },
                maxLength: 32,
              ),
            ),
            new SizedBox(width: 10.0),
            new DropdownButtonHideUnderline(
                child: new DropdownButton(items: items, hint: new Text('Profession'),
                  value: profession,
                  onChanged: (String val) {
                    setState(() {
                      profession = val;
                    });
                  },
                ))
          ],
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Message'),
          onSaved: (val) {
            message = val;
          },
          validator: validateMessage,
          maxLines: 5,
          maxLength: 256,
        ),





        new TextFormField(
          decoration: new InputDecoration(hintText: 'Feedback'),
          onSaved: (val) {
            feedback = val;
          },
          validator: validatefeedback,
          maxLines: 2,

        ),






        new RaisedButton(
          onPressed: _sendToServer,
          color: Colors.deepOrange[600],
          child: new Text('Send',style: TextStyle(color: Colors.white)),

        ),



        new SizedBox(height: 20.0),
        new RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new ShowDataPage()));
          },
          color: Colors.deepOrange[600],
          child: new Text('Show Data',style: TextStyle(color: Colors.white)),
        )




      ],
    );
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      DatabaseReference ref = FirebaseDatabase.instance.reference();
      var data = {
        "name": name,
        "profession": profession,
        "message": message,
        "feedback":feedback,
      };
      ref.child('Artificial Insemination').push().set(data).then((v) {
        _key.currentState.reset();
      });
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  String validateName(String val) {
    return val.length == 0 ? "Enter Name First" :null;
  }

  String validateMessage(String val) {
    return val.length == 0 ? "Enter Email First":null;
  }


  String validatefeedback(String val) {
    return val.length == 0 ? "Enter feedback First" :null;
  }

}
