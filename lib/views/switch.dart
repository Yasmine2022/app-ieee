import 'package:flutter/material.dart';

class LinkedSwitchesExample extends StatefulWidget {
  @override
  _LinkedSwitchesExampleState createState() => _LinkedSwitchesExampleState();
}

class _LinkedSwitchesExampleState extends State<LinkedSwitchesExample> {
  bool _switch1 = false;
  bool _switch2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            title: Text('SB'),
            trailing: Switch(
              value: _switch1,
              onChanged: (newValue) {
                setState(() {
                  _switch1 = newValue;
                  if (_switch1) {
                    _switch2 = false; // fermer switch 2 si switch 1 est ouvert
                  }
                });
              },
            ),
          ),
          ListTile(
            title: Text('Chapter(s) or AG'),
            trailing: Switch(
              value: _switch2,
              onChanged: (newValue) {
                setState(() {
                  _switch2 = newValue;
                  if (_switch2) {
                    _switch1 = false; // fermer switch 1 si switch 2 est ouvert
                  }
                });
              },
            ),
          ),
        ],
      );
  }
}
