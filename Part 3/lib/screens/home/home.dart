import 'package:flutter/material.dart';
import 'package:flutter_sqlite/screens/add_edit/add_edit.dart';
 
import 'package:flutter_sqlite/screens/shared/top_container.dart';
 
import 'package:flutter_sqlite/models/note.dart';
import 'package:flutter_sqlite/screens/shared/task_column.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
 

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(       
      backgroundColor: const Color.fromRGBO(247, 250, 252, 1.0),
      body: SafeArea(
        child: Column(
          children: [
             TopContainer(
              height: 200,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 110.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: const Color.fromRGBO(251, 99, 64, 1.0),
                            backgroundColor: const Color.fromRGBO(94, 114, 228, 1.0),
                            center: const CircleAvatar(
                              backgroundColor: Color.fromRGBO(82, 95, 127, 1.0),
                              radius: 45.0,
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Text(
                                  'Lumei Digital',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: Color.fromRGBO(247, 250, 252, 1.0),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const Text(
                                'Good software like wine, takes time',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children:[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        subheading('My Tasks'),
                        GestureDetector(
                          onTap: () async {
                             await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const AddEditNote()),
                            );
                            
                          },
                          child: addIcon(),
                        ),
                      ],
                  ),                  
                ]
              )
            ), 
             
           //Add a ListView.builder to display notes
          ],
        )
      ),
        
      
    );    
  }
 

  static CircleAvatar addIcon() {
    return const CircleAvatar(
      radius: 25.0,
      backgroundColor: Color.fromRGBO(94, 114, 228, 1.0),
      child: Icon(
        Icons.add,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  Text subheading(String title) {
    return Text(
      title,
      style: const TextStyle(
          color: Color.fromRGBO(94, 114, 228, 1.0),
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }
}