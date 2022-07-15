import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:gradient_textfield/gradient_textfield.dart';
import 'package:saas_app/detailsPage.dart';
import 'package:saas_app/main.dart';
class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  TextEditingController search = new TextEditingController();
  List list = [
    {"name": "Data Centre 1", "region": "Mumbai", "num" : 25},
    {"name": "Data Centre 2", "region": "Indore", "num" : 2},
    {"name": "Data Centre 3", "region": "Washington", "num" : 78},
    {"name": "Data Centre 4", "region": "Kolkata", "num" : 10},
    {"name": "Data Centre 5", "region": "Bangalore", "num" : 20},
    {"name": "Data Centre 6", "region": "Chennai", "num" : 7},
    {"name": "Data Centre 7", "region": "Mumbai", "num" : 57},
    {"name": "Data Centre 8", "region": "Delhi", "num" : 13},
    {"name": "Data Centre 9", "region": "USA", "num" : 250},
    {"name": "Data Centre 10", "region": "Kolkata", "num" : 25},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body:
        Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: MediaQuery.of(context).size.height * 0.05),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              Row(
                children: [
                  Text("DATA CENTRES", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextField(
                            controller: search,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.search, color: Colors.white,),
                              fillColor: Colors.black,
                              filled: true,
                              focusColor: Colors.white,
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        Icon(Icons.person, color: Colors.white, size: 40,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80,),
              Container(
                color: Colors.black,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Text("Name", style: TextStyle(color: Colors.white),)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Text("Region", style: TextStyle(color: Colors.white),)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Text("No of Servers", style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
              Expanded(child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage(name: list[index]["name"], count: list[index]["num"])),
                      );
                    },
                    child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]["name"])),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]["region"])),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]["num"].toString())),

                            ],
                          ),
                        ),
                  );
                    }
                ))
    ]
    ),
        )
    );
  }
}