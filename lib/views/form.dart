import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MyCustomForm extends StatefulWidget {
  //const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  // Create a global key that uniquely identifies the Form widget
  final _formKey = GlobalKey<FormState>();

  // Create a text controller. Later, use it to retrieve the
  // current value of the TextField.
  final Name = TextEditingController();
  final Date = TextEditingController();
  final price = TextEditingController();
  bool onConfirmPressed = true;

  @override
  void initState() {
    // TODO: implement initState
    //name.text="amine";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Name.dispose();
    Date.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(

                keyboardType: TextInputType.text,
                controller: Name,
                //decoration label hint border
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a name',
                    labelText: "Event name*",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please a name';
                  }
                  // if (!RegExp("^[a-zA-Z0-9+_.-]+@ieee.org").hasMatch(value)) {
                  //   return ("Please Enter a correct email");
                  // }

                  return null;
                },
              ),

            ],
          ),
        ),
    );
  }
}




