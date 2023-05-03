import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quotes/views/radioBox.dart';
import 'package:quotes/views/switch.dart';
import 'ActivityDetails.dart';
import 'DatePicker.dart';
import 'form.dart';

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentTitle = 'All' ;
  List<String> listOfTitle= ['all','Events','Workshops','Meets'];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 4));
    FlutterNativeSplash.remove();
  }
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds:10),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash()));
  //   }
  //   );
  // }

  @override
  Widget build(BuildContext context) {


    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Scaffold(
      appBar: AppBar(
    backgroundColor: Color(0xff013473),
    title: !isSearching
        ? const Text(
    "Activities",
    style: TextStyle(
    fontSize: 24,
    color: Colors.white,
    ),
    )
    : TextField(
    onChanged: (value) {
    //_filterCountries(value);
    },
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
    // icon: Icon(
    // Icons.search,
    // color: Colors.white,
    // ),
    hintText: "Search...",
    hintStyle: TextStyle(color: Colors.white))),
    centerTitle: true,
    leading: IconButton(
    onPressed: (){},
    icon: Icon(Icons.menu),
    ),
    actions: [
      isSearching
      ? IconButton(
      icon: Icon(Icons.cancel),
      onPressed: () {
        setState(() {
          this.isSearching = false;
          //filteredCountries = countries;
        });
      },
    )
        : IconButton(
    icon: Icon(Icons.search),
    onPressed: () {
      _showBottomModal(context);
      // showModalBottomSheet<void>(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return SizedBox(
      //       height: 200,
      //       child: Center(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('Modal BottomSheet'),
      //             ElevatedButton(
      //               child: const Text('Close BottomSheet'),
      //               onPressed: () => Navigator.pop(context),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // );
    // setState(() {
    // this.isSearching = true;
    // });
    },
    )
    ]),
    body: Column(
    children: [
      Appbar( height, width),
    Expanded(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: width*0.1),
    child: ListView.builder(
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
    return AppCard(width);
    }
    ),
    ),
    )
    ],

    ),
    );
  }

  Widget AppCard(double width){
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ActivityDetails()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            width: width*0.8,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: const Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2XPFn3RHLaiJrFezingIrVBMchg_Fu-um-A&usqp=CAU",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "PES General Meeting",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff013473),
                            ),
                          ),
                          Text(
                            "4 decembre2022",
                          ),
                        ],
                      ),
                      const Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/bsmq8rbdsnijtp9hbtg5"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 5,
          width: width*0.6,
          color: Color(0xfff2f2f2) ,)
      ],
    );

  }
  Widget Appbar(double height,double width){
    return Container(
      width: width*0.9,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: height*0.025),
      decoration: const BoxDecoration(
          color: Color(0xfff2f2f2),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        listOfTitle.map((e){
          return TextButton(
            onPressed: () {
              setState(() {
                currentTitle = e;
              });
            },
            child: Text(e.capitalize(),
              style: TextStyle( color: currentTitle == e ? Colors.blue : Colors.black,),
            ),
          );
        }).toList(),
      ),
    );

  }

}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

_showBottomModal(context) {

  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
          height: 2000,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisSize: MainAxisSize.min,
              children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                         'Search',
                         style: TextStyle(
                           color: Colors.blue,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                     ),
                      ),
                     IconButton(
                       icon: Icon(Icons.close),
                       onPressed: () => Navigator.pop(context),
                     ),
                   ]
               ) ,
            Container(
              height: 85,
                child: MyCustomForm()
            ),
                DatePickerTextField(labelText: 'Date'),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SliderExample(),
                  ],
                ),
                SizedBox(
                    height: 100,
                    child: LinkedSwitchesExample()
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text(
                    'Select Chapter(s) or AG',
                    style: TextStyle(
                     // fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    inkWell('WIE'),
                    inkWell('CAS'),
                    inkWell('EMBS'),
                    inkWell('RAS'),
                    inkWell('IAS'),
                    inkWell('CS'),
                    inkWell('PES'),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text(
                    'Select Category',
                    style: TextStyle(
                      // fontSize: 20,
                    ),
                  ),
                ),
                RadioCircle(),
              ],
            ),
          ),
        );
    },
  );
}
class SliderExample extends StatefulWidget {
  //const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  RangeValues _currentRangeValues = const RangeValues(0, 0);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 330,
      child: RangeSlider(
        values: _currentRangeValues,
        min: 0,
        max: 100,
        divisions: 5,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}
Widget inkWell (String text){
  return  Center(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //       //color: Colors.black, //color of border
          //       width: 2, //width of border
          //     ),
          //     borderRadius: BorderRadius.circular(5)
          // ),
          width: 40,
          height: 30,
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ),
      ),
      onTap: () {
        print('Inkwell a été cliqué.');
      },
    ),
  );
}
