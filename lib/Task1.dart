import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1Screen(),
    );
  }
}

class Task1Screen extends StatefulWidget {
  const Task1Screen({super.key});

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          toolbarHeight: 100,
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: double.infinity,
                          height: 200,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Basic Yoga For Beginners",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("4.8"),
                                ],
                              ),
                              Text("128 reviews"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text("Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit,"
                              "asd do elusmod tempor incididunt ut labore"
                              "et dolore magna aliqua. "
                              "Ut enim ad minim veniam, quis nostrud"
                              "exercitation ullamco laboris..."),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.analytics_outlined,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Level"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "01",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Week"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "01",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.share_arrival_time_outlined,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Mins"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "09",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Schedule",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "See All >",
                                style: TextStyle(),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                              itemCount: 2,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,mainAxisSpacing: 5,crossAxisSpacing: 5,), itemBuilder: (context,i){
                            return Card(
                              elevation: 0,
                              borderOnForeground: false,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        image: DecorationImage(image: NetworkImage("https://imgv3.fotor.com/images/cover-photo-image/AI-generated-oil-painting-seaside-ancient-ruins_2023-05-15-095813_vumt.jpg"),
                                            fit: BoxFit.fill,
                                        )
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("Gym For Beginners"),
                                    subtitle: Text("Day - 01"),
                                    trailing: Icon(Icons.favorite),
                                  )
                                ],
                              ),
                            );
                          }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Text(
                    "ADD To",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
