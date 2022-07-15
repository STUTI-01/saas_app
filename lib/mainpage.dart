import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:gradient_textfield/gradient_textfield.dart';
import 'package:saas_app/list.dart';
import 'package:saas_app/main.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
            width: MediaQuery.of(context).size.width * 0.42,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Text("\n\n\nDATA CENTRE MANAGEMENT APP\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)
                      , textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Text("Sign In\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white)
                        , textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/Frame 2036.png"
                            ),
                            const Text("Admin\n", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                              , textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Column(
                          children: [
                            Image.asset(
                                "assets/a.png"
                            ),
                            const Text("Client\n", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                              , textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Text("\nEmail\n", style: TextStyle(color: Colors.white)
                      , textAlign: TextAlign.left,
                    ),
                    TextField(
                      controller: email,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.white,),
                        fillColor: Colors.black,
                        filled: true,
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Text("\nPassword\n", style: TextStyle(color: Colors.white)
                      , textAlign: TextAlign.left,
                    ),
                    TextField(
                      controller: password,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password, color: Colors.white,),
                        fillColor: Colors.black,
                        filled: true,
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ListPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: MediaQuery.of(context).size.height * 0.04),
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Text("\nSign In\n", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    )
                  ],
                ),
              )
           )
        ],
      ),
    );
  }
}