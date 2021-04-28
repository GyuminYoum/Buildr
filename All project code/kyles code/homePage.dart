import 'package:flutter/material.dart';
import './workoutSchedule.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  //DateTime date = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Sun",
              ),
              Tab(
                text: "Mon",
              ),
              Tab(
                text: "Tue",
              ),
              Tab(
                text: "Wed",
              ),
              Tab(
                text: "Thu",
              ),
              Tab(
                text: "Fri",
              ),
              Tab(
                text: "Sat",
              ),
            ],
          ),
          title: Center(
            child: Text('Workout Schedule'),
          ),
        ),
        body: TabBarView(
          children: [
            Schedule(),
            Schedule(),
            Schedule(),
            Schedule(),
            Schedule(),
            Schedule(),
            Schedule(),
          ],
        ),
      ),
    );
  }
}
