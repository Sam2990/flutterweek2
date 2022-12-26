import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("Add Event"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.edit_calendar,
                    color: Colors.white,
                  ),
                  hintText: 'Event',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.deepPurple,
                  //////////border///////////
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(28),
                  )
                  ////////////border///////////

                  ),
              controller: _textEditingController,
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Container(
              child: Builder(builder: (context) {
                return ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: 324.0, height: 48.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        )),
                    onPressed: () {
                      String add = _textEditingController.text;
                      Navigator.of(context).pop(add);
                    },
                    child: const Text("ADD EVENT"),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
