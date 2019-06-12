import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'dataStore.dart';
import 'ai.dart';
import 'pregnancy.dart';



void main() => runApp(MyApp());
class MainPage extends StatefulWidget{
  final String title;

  MainPage({this.title}):super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new MainPageState();

  }
}

class MainPageState extends State<MainPage>{

  @override
  Widget build(BuildContext context) {

    var pages=[AIPage(),PDPage(),];
    //MainPageState({Keykey, this.todos}) : super(key: key);

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title:  Text(widget.title),


      ),


      body: new GridView.extent(maxCrossAxisExtent: 130.0,
        mainAxisSpacing: 16.5,
        crossAxisSpacing: 16.5,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(11),



      ),






    );



  }

}






List<Widget> _buildGridTiles(numberOfTiles)
{

  List<Stack>containers=new List<Stack>.generate(numberOfTiles,
          (int index){


        var pages=[AIPage(),PDPage()];


        final  imageName=index < 9 ?


        'assets/i${index+1}.PNG' : 'assets/i${index+1}.PNG' ;
        return new Stack(




          alignment: const Alignment(0.0, 1.90),



          children: <Widget>[









            new Scaffold(
              body: ListView.builder(
                itemCount: imageName.length,
                itemBuilder: (context, imageName) {

                  //var title;
                  return ListTile(
                    title: new Image.asset( 'assets/i${index+1}.PNG',
                      width: 130.0,
                      height: 150.0,
                      fit: BoxFit.contain,
                    ),
                    // When a user taps on the ListTile, navigate to the DetailScreen.
                    // Notice that we're not only creating a DetailScreen, we're
                    // also passing the current todo through to it!
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(

                            builder: (context) => pages[index]
                        ),




                      );

                    },


                  );

                },




              ),


            ),




















            new Container(
              padding: const EdgeInsets.all(10.0),

              child:new Text(storeItems[index].itemName,style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,

                color: Colors.black,

              ),) ,
            ),







          ],

        );

      });


  return containers;

}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: new MainPage(title: "View of Images"),
    );
  }


}

