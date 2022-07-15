import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:saas_app/list.dart';
class DetailsPage extends StatefulWidget {
  final String name;
  final int count;
  const DetailsPage({Key? key, required this.name, required this.count}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TextEditingController search = new TextEditingController();
  List list = [
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "centos", "Location" : "Mumbai", "Rack": "C011", "status": "Healthy", "on": true},
    {"name": "Rack Server", "model": "Rack Server", "OS" : "linux", "Location" : "Kolkata", "Rack": "C987", "status": "Critical", "on": false},
    {"name": "Edge Rack", "model": "Edge Server", "OS" : "linux", "Location" : "Delhi", "Rack": "A511", "status": "Warning", "on": true},
    {"name": "Taishan", "model": "Rack Server", "OS" : "windows", "Location" : "Kolkata", "Rack": "B811", "status": "Healthy", "on": false},
    {"name": "PowerEdge", "model": "Edge Server", "OS" : "macos", "Location" : "Mumbai", "Rack": "C907", "status": "Warning", "on": true},
    {"name": "Taishan", "model": "Edge Server", "OS" : "windows", "Location" : "Mumbai", "Rack": "W568", "status": "Healthy", "on": true},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "centos", "Location" : "Mumbai", "Rack": "Q854", "status": "Crtical", "on": false},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "linux", "Location" : "USA", "Rack": "C011", "status": "Critical", "on": true},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "centos", "Location" : "Mumbai", "Rack": "G854", "status": "Healthy", "on": false},
    {"name": "PowerEdge", "model": "Edge Server", "OS" : "windows", "Location" : "Mumbai", "Rack": "C011", "status": "Healthy", "on": true},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "macos", "Location" : "Delhi", "Rack": "0987", "status": "Warning", "on": false},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "centos", "Location" : "Mumbai", "Rack": "C123", "status": "Healthy", "on": true},
    {"name": "Taishan", "model": "Rack Server", "OS" : "linux", "Location" : "Mumbai", "Rack": "C011", "status": "Warning", "on": true},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "windows", "Location" : "Mumbai", "Rack": "C011", "status": "Critical", "on": false},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "linux", "Location" : "Mumbai", "Rack": "T642", "status": "Healthy", "on": true},
    {"name": "PowerEdge", "model": "Rack Server", "OS" : "linux", "Location" : "Mumbai", "Rack": "C011", "status": "Healthy", "on": true},
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
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.name, style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
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
                          Text("View Summary", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text("Servers (${widget.count})", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                    SizedBox(width: 60,),
                    GestureDetector(
                      onTap: ()
    {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                elevation: 16,
                child: Container(
                    height: 400.0,
                    width: 360.0,
                    child: Column(
                      children: [
                        TextField(

                        )
                      ],
                    )));
          });
    },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        width: 200,
                        child: Text("\nAdd New +\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
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
                          child: Text("Model", style: TextStyle(color: Colors.white),)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Text("OS", style: TextStyle(color: Colors.white),)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Text("Location", style: TextStyle(color: Colors.white),)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Text("Rack", style: TextStyle(color: Colors.white),)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Text("Health Status", style: TextStyle(color: Colors.white),)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Text("Server Status", style: TextStyle(color: Colors.white),)),
                    ],
                  ),
                ),
                Expanded(child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          //TODO
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]['name'],)),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]['model'])),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]['OS'])),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]['Location'])),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: Text(list[index]['Rack'])),
                              Container(
                                height: 40,
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: list[index]['status'] == 'Healthy' ?
                                  Colors.green.withOpacity(0.2) : list[index]['status'] == 'Warning' ? Colors.orange.withOpacity(0.2) : Colors.red.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(list[index]['status'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: list[index]['status'] == 'Healthy' ?
                                  Colors.green : list[index]['status'] == 'Warning' ? Colors.orange: Colors.red,
                                ),
                                ),
                              ),
                              Switch(value: list[index]['on'], onChanged: (val){
                              },
                                activeColor: Colors.white,
                                activeTrackColor: Colors.green,
                                inactiveTrackColor: Colors.grey,
                              )

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