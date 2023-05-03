import 'package:flutter/material.dart';
import 'Product.dart';
import 'User.dart';
import 'UserApi.dart';

class Userr extends StatefulWidget {
  const Userr({Key? key}) : super(key: key);

  @override
  _UserrState createState() => _UserrState();
}

class _UserrState extends State<Userr> {
  String currentTitle = 'All' ;
  late Future<List<User>> futureUsers;
  void initState() {
    super.initState();
    futureUsers = UserApi.fetchUsers()  ;
  }
  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff013473),
          title: const Text(
            "Activities",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ]),
      body:Container(
          height: double.infinity,
          width: double.infinity,
          child: FutureBuilder<List<User>>(
            future: futureUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                //List<Product> produit = snapshot.data!.products[0] as List<Product> ;
                // return Column(
                //   children: [
                //     Appbar(produit,currentTitle, height, width),
                //     Expanded(
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: width*0.1),
                //         child: ListView.builder(
                //             itemCount: 5,
                //             itemBuilder: (BuildContext context, int index) {
                //               return AppCard(width);
                //             }
                //         ),
                //       ),
                //     )
                //   ],
                //
                // );
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading:  Icon(Icons.list),
                          trailing:  Text(
                            snapshot.data![index].id.toString(),
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("List item $index"));
                    });

                 // Text(snapshot.data![0].id.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return
                Container(
                  width:double.infinity,
                  height: double.infinity,
                    child: CircularProgressIndicator(color: Color(0xff013473),)
                );
            },
          )
      ),
    );

  }
}
Widget AppCard(double width){
  return Column(
    children: [
      Container(
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
      Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 5,
        width: width*0.6,
        color: Color(0xfff2f2f2) ,)
    ],
  );

}
Widget Appbar(List listOfTitle,String currentTitle,double height,double width){
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

              currentTitle = e;
          },
          child: Text(e.capitalize(),
            style: TextStyle( color: currentTitle == e ? Colors.blue : Colors.black,),
          ),
        );
      }).toList(),
    ),
  );

}




extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

