import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:saas_app/list.dart';
import 'package:saas_app/mainpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/welcome.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
      GlassmorphicContainer(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height,
        borderRadius: 0,
        blur: 10,
        alignment: Alignment.bottomCenter,
        border: 0,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.white.withOpacity(0.4),
            ]),
        borderGradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.white.withOpacity(0.4),
            ]),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Column(
             children: [
               IconButton(
                 onPressed:
               (){},
                 padding: const EdgeInsets.only(top: 300, bottom: 10),
               icon: const Icon(Icons.person_add), iconSize: 100,),
               const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,),)
             ],
           ), SizedBox(width: 150,),
            Column(
              children: [
                IconButton(onPressed:
                    ()
        {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ListPage()),
        );
        },
                  padding: const EdgeInsets.only(top: 300, bottom: 10),
                  icon: const Icon(Icons.list_alt), iconSize: 100,),
                const Text('List of Data Centres', style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),)
        ],
      ),
    );
  }
}
