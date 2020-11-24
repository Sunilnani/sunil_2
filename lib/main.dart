import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:
        SafeArea(
            child: Container(

              child: SingleChildScrollView(
                child: Column(
                  children: [
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left:8.0),
                        child: Text("Discover",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 35),),
                      ),
                      SizedBox(width: 110,),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text("All"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text("New"),
                      ),

                    ],
                  ),

                  SizedBox(height: 20,),

                  Container(
                    child:      TextField(
                      decoration: InputDecoration(
                        hintText: " Search ",

                        hintStyle: TextStyle(color: Colors.black38, fontSize:18),
                        border : OutlineInputBorder(
                          borderSide: BorderSide(
                            color : Colors.black38,
                          ),

                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(

                            color: Colors.black,
                            width: 2,
                          ),),

                        prefixIcon: Icon(Icons.search_rounded  ,color: Colors.black38,),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Icon(Icons.import_contacts_sharp)  ,
                        Text("My Share")
                      ],),

                      Column(children: [
                        Icon(Icons.import_contacts_sharp)  ,
                        Text("My Share")
                      ],),
                      Column(children: [
                        Icon(Icons.import_contacts_sharp)  ,
                        Text("My Share")
                      ],),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Discover curated Channels"),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("img/nature.jpg",fit: BoxFit.cover,height: 160,),
                          Text(" # nature Designs"),
                          Text("120 videos ")
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("img/celebraties.jpg",fit: BoxFit.cover,height: 160,),
                          Text(" Celebraties"),
                          Text(" 180 videos")
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("img/action.jpeg",fit: BoxFit.cover,height: 160,),
                          Text(" Action Girls"),
                          Text("150 Videos")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Discover curated Channels"),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("img/nature.jpg",fit: BoxFit.cover,height: 160,),
                          Text(" # nature Designs"),
                          Text("120 videos ")
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("img/celebraties.jpg",fit: BoxFit.cover,height: 160,),
                          Text(" Celebraties"),
                          Text(" 180 videos")
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("img/action.jpeg",fit: BoxFit.cover,height: 160,),
                          Text(" Action Girls"),
                          Text("150 Videos")
                        ],
                      ),
                    ],
                  )



                ],),
              ),
            ),
          ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.camera),
                title: Text('Camera'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),
      ),
    );

  }
}