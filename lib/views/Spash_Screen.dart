//
// import 'dart:async';
// import 'dart:js';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   _SplashState createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(Duration(seconds:10),( ){
//       //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash()));
//     }
//     );
//   }
//
//   Widget build(BuildContext context) {
//     var size, height, width;
//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;
//     return Scaffold(
//       body: Stack(
//           children : [
//             Image(
//               image: NetworkImage(
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2XPFn3RHLaiJrFezingIrVBMchg_Fu-um-A&usqp=CAU",
//               ),
//               width: double.infinity,
//               height: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             Center(
//               child: Align(
//                 alignment: Alignment(0,0.8),
//                 child :Text('Teams_build_dreams',
//                     style: TextStyle(fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white)),
//               ),
//             )
//           ]
//
//
//       ),
//
//     );
//   }
// }


