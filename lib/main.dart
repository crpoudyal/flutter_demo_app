import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      title: "prekshya Poudyal",
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  
  }
}
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int dataToChange=0;
  
  void DataChanged(){
    setState(() {
      dataToChange +=1;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prekshya Poudyal"
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have Clicked",
            style: TextStyle(
              fontSize: 20.0,
            ),),
            Text("$dataToChange",
            style: TextStyle(
              fontSize: 50.0,
            ),
            ),
            Text("times"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            RaisedButton(onPressed: DataChanged,
            color: Colors.green,
            child: Text("click Me -",
            style:TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
            ),
            ),
            
          ],
        ),
        ),
      
    );
  }
}






// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "StateLess Widget",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,

//       ),
//     home: Scaffold(
//     appBar: AppBar(
//       title: Text(
//         "StateLess Widget"
//         ),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.all(20.0),
//           ),
//         Text(
//           "Prekshya Poudyal has",
//         style: new TextStyle(
//         fontSize: 20.0,
//           ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             ),
//           Text("data",
//           style: TextStyle(
//           fontSize: 40.0,
//           ),
//           ),
//           Padding(
//             padding:EdgeInsets.all(20.0),
//              ),
//           RaisedButton(onPressed: (){},
//         color: Colors.orange,
//           child: Text("Click Me",
//           style:  TextStyle(
//              color: Colors.white,
//           ),
//           ),
//           ),
//       ],

//     ),
//     ),
//     ),
    
//     );
  
//   }
// }