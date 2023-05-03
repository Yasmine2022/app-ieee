import 'package:flutter/material.dart';

class RadioCircle extends StatefulWidget {
  @override
  _RadioCircleState createState() => _RadioCircleState();
}

class _RadioCircleState extends State<RadioCircle> {
  var _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: 1,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          activeColor: Colors.blue,
        ),
        Text('WorkShop'),
        SizedBox(width: 20),
        Radio(
          value: 2,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          activeColor: Colors.blue,
        ),
        Text('Meeting'),
        SizedBox(width: 20),
        Radio(
          value: 3,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          activeColor: Colors.blue,
        ),
        Text('Event'),

      ]
    );
  }
}
