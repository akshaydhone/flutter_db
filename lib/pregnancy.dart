import 'package:flutter/material.dart';






class PDPage extends StatefulWidget {
  static String tag = 'pd-page';
  @override
  _PDPageState createState() => new _PDPageState();
}

class _PDPageState extends State<PDPage> {
  //String message;

  String name, profession, message;
  List<DropdownMenuItem<String>> items = [
    new DropdownMenuItem(
      child: new Text('Positive'),
      value: 'Positive',
    ),
    new DropdownMenuItem(
      child: new Text('Negative'),
      value: 'Negative',
    ),
  ];
  @override
  Widget build(BuildContext context) {


    final pregnancydiagnosis = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'Pregnancy Diagnosis',
        style: TextStyle(fontSize: 28.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );






    final a1 = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'PD Date',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );



    final a7=

    new TextFormField(
      //textAlign: TextAlign.center,


      decoration: new InputDecoration(hintText: 'Date',filled: true,fillColor: Colors.lightBlueAccent,border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
            const Radius.circular(10.0)
        ),
      ),),
      keyboardType: TextInputType.number,
      onSaved: (val) {
        message = val;
      },
      //validator: validateMessage,
      maxLines: 1,
      //maxLength: 256,
    );




    final z1 = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0,),



      child: Text(

        '© DSK Milkotronics Pvt Ltd.',
        style: TextStyle(fontSize: 20.0, color: Colors.white,fontWeight: FontWeight.bold,backgroundColor: Colors.lightBlueAccent,),

        textAlign: TextAlign.center,


      ),
    );
    final a2= Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'PD Result',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );



    final a8=
    new DropdownButtonHideUnderline(
        child: new DropdownButton(items: items, hint: new Text('Select'),
          value: profession,
          onChanged: (String val) {
            setState(() {
              profession = val;
            });
          },
        ));


    final a3= Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'Remarks',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );






    final a9=
    new TextFormField(
      decoration: new InputDecoration(hintText: 'Your result is ready',filled: true,fillColor: Colors.lightBlueAccent, border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),),
      //keyboardType: TextInputType.number,
      onSaved: (val) {
        message = val;
      },
      //validator: validateMessage,
      maxLines: 1,
      //maxLength: 256,
    );
















    final a4= Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'Visit Charges',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );





    final a10=
    new TextFormField(
      decoration: new InputDecoration(hintText: 'Enter Amt',filled: true,fillColor: Colors.lightBlueAccent, border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),),
      keyboardType: TextInputType.number,
      onSaved: (val) {
        message = val;
      },
      //validator: validateMessage,
      maxLines: 1,
      //maxLength: 256,
    );



    final a5= Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'Incentive',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );



    final a11=
    new TextFormField(
      decoration: new InputDecoration(hintText: 'Enter Amt',filled: true,fillColor: Colors.lightBlueAccent, border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),),
      keyboardType: TextInputType.number,
      onSaved: (val) {
        message = val;
      },
      //validator: validateMessage,
      maxLines: 1,
      //maxLength: 256,
    );

    final a6= Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

      child: Text(

        'Charges',
        style: TextStyle(fontSize: 23.0, color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );



    final a12=
    new TextFormField(
      decoration: new InputDecoration(hintText: 'Enter Amt',filled: true,fillColor: Colors.lightBlueAccent, border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),),
      keyboardType: TextInputType.number,
      onSaved: (val) {
        message = val;
      },
      //validator: validateMessage,
      maxLines: 1,
      //maxLength: 256,
    );




    final saveButton = Padding(

      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 60.0),


      child: RaisedButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),

        ),
        onPressed: () {
          Navigator.of(context).pushNamed(PDPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.orange[600],

        child: Text('Save',style: TextStyle(color: Colors.white)),

      ),
    );




    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 54.0, right: 54.0),
          children: <Widget>[
            pregnancydiagnosis,
            SizedBox(height: 10.0),
            a1,
            SizedBox(height: 10.0),

            a7,
            SizedBox(height: 10.0),

            a2,
            SizedBox(height: 10.0),

            a8,
            SizedBox(height: 10.0),



            a3,
            SizedBox(height: 10.0),

            a9,
            SizedBox(height: 10.0),

            a4,
            SizedBox(height: 10.0),

            a10,
            SizedBox(height: 10.0),


            a5,
            SizedBox(height: 10.0),

            a11,
            SizedBox(height: 10.0),

            a6,
            SizedBox(height: 10.0),

            a12,
            SizedBox(height: 10.0),

            saveButton,
            SizedBox(height: 10.0),


            z1,
            SizedBox(height: 10.0),



          ],
        ),
      ),
    );
  }
}

