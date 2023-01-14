import 'package:figma_design/screen/bottom_nav/calender.dart';
import 'package:figma_design/screen/bottom_nav/my_task.dart';
import 'package:figma_design/screen/bottom_nav/profile.dart';
import 'package:figma_design/screen/bottom_nav/project.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavDemo extends StatefulWidget {
  const BottomNavDemo({super.key});

  @override
  State<BottomNavDemo> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  List<Widget> pages = [Calender(), Profile(), MyTask(), Project()];
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color(0xff292B3E),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                          pageController.jumpToPage(currentIndex);
                        });
                      },
                      icon: Icon(
                        Icons.task,
                        color: Colors.grey,
                      )),
                  Text(
                    "My Task",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                          pageController.jumpToPage(currentIndex);
                        });
                      },
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      )),
                  Text(
                    "Calender",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                          pageController.jumpToPage(currentIndex);
                        });
                      },
                      icon: Icon(
                        Icons.task_sharp,
                        color: Colors.white,
                      )),
                  Text(
                    "project",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3 ;
                          pageController.jumpToPage(currentIndex);
                        });
                      },
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      )),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
