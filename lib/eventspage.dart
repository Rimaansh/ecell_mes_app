import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final List<String> _events = [
    "Case Maze",
    "Startup Mela",
    "Event 3",
    "Event 4",
    "Event 5",
    "Event 6",
    "Event 7",
    "Event 8",
    "Event 9",
    "Event 10",
    "Event 11",
    "Event 12",
    "Event 13",
    "Event 14",
    "Event 15"
  ];

  final Set<String> _selectedEvents = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: _events.length,
        itemBuilder: (BuildContext context, int index) {
          final event = _events[index];
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text(
                event,
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                icon: _selectedEvents.contains(event)
                    ? Icon(Icons.check_box)
                    : Icon(Icons.check_box_outline_blank_outlined),
                onPressed: () {
                  setState(() {
                    if (_selectedEvents.contains(event)) {
                      _selectedEvents.remove(event);
                    } else {
                      _selectedEvents.add(event);
                    }
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        label: Text("Register Now"),
        icon: Icon(Icons.app_registration),
        onPressed: () {
          print("Selected events: $_selectedEvents");
        },
      ),
    );
  }
}
