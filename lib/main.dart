import 'package:first_project/screendata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
    body: SafeArea(
      child: Container(
        child: Column(
        children: [
                    Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/75/Flag_of_Palestine.png")),
                    Text('wael',style: TextStyle(fontSize: 100,color: Colors.black,backgroundColor: Colors.grey)),
                    SizedBox(height:50 ,),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) => Screendata('wael','dahroj')));
                    }, child: Text('send'),style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),),
                  ],
        ),
      ),
    ),
      
    );
  }
}
