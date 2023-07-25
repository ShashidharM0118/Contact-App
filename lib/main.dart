import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contact List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
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
    var arrnum = ["Anand",'Arun','Alok','Bunny','Dinod','Dhandan','Darshan','Danush','Dayanand','Eshwar','Furkan','ganesh','giri','govind',
    'geerish'];
    return Scaffold(
      appBar: AppBar(
  
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    
        title: Text(widget.title),
      ),
      body: ListView.separated(itemBuilder: (context, index) { //only there must be return statement inside the flower brackets
            return ListTile(
              // leading: Text('${index+1}'),
              leading: CircleAvatar(   // this gives the image in or anything inside will be in circular shape
                // child: Text('profile',style: TextStyle(fontSize: 10,fontWeight:FontWeight.w100)),
                // backgroundImage: AssetImage('assets/images/img.png'),
                child: Icon(Icons.account_circle_sharp),
                backgroundColor: Colors.grey,
                radius: 25,
              ),
              title: Text(arrnum[index],style: TextStyle(fontFamily:'FontMain'),),
              subtitle: Text('student',style: TextStyle(fontWeight:FontWeight.w200),),
              trailing: Icon(Icons.add_call),
            );
        },
        itemCount: arrnum.length,
          separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 20,thickness: 1,);
          },
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
