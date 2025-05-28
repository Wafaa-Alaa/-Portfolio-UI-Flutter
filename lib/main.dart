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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return  Scaffold(
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 83,),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.png'),
              radius: 90,
            ),
            SizedBox(height: 34,),
            Text('Hi, I am John,\n Creative\n Technologist',style: TextStyle(
              fontWeight:FontWeight.w700,
              fontSize: 32,
              color: Color(0xFF21243D),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24,),
            Text('Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit. Exercitation\n veniam consequat sunt nostrud amet.',style: TextStyle(
              fontWeight:FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF21243D),
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24,),
            ElevatedButton(onPressed: ()=>{}, child:Text('Download Resume',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),

              )
            ),
            style: ElevatedButton.styleFrom(
              fixedSize:Size (208,47),
              padding: EdgeInsets.zero,
              backgroundColor: Color(0xFFFF6464),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              )
              ),

            ),


          ],
        ),
      ),
    );

  }
}
