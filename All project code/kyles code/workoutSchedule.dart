import 'package:flutter/material.dart';
import 'workoutSet.dart';

class Schedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScheduleState();
  }
}

class _ScheduleState extends State<Schedule>
    with AutomaticKeepAliveClientMixin<Schedule> {
  List<WorkoutSet> workout = new List<WorkoutSet>();
  String _tempName;
  int _tempReps;

  final _formKey = GlobalKey<FormState>();

  void _validateNewSet() {
    workout.add(WorkoutSet(name: _tempName, reps: _tempReps));
    print(_tempName);
    Navigator.of(context).pop();
  }

  Widget _myScheduleView() {
    return Scaffold(
      body: ListView.builder(
        itemCount: workout.length,
        itemBuilder: (context, index) {
          final item = workout[index];
          return Card(
            child: ListTile(
              title: Text(item.name),
              subtitle: Text(item.reps.toString()),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Add New Set",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Set name",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Give set a name";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _tempName = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "# of Reps",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Rep count",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Give rep count";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _tempReps = int.parse(value);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                        child: Text(
                          "ADD SET",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            setState(() {
                              _validateNewSet();
                            },);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        tooltip: 'Add a new Set!',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return _myScheduleView();
  }
}

