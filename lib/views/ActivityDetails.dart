import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ActivityDetails extends StatefulWidget {
  const ActivityDetails({Key? key}) : super(key: key);

  @override
  _ActivityDetailsState createState() => _ActivityDetailsState();
}

class _ActivityDetailsState extends State<ActivityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff013473),
          title: Text(
            "Event",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ]),
      body: SingleChildScrollView(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children :[
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: const Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2XPFn3RHLaiJrFezingIrVBMchg_Fu-um-A&usqp=CAU",
                      ),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child:   Transform.translate(
                          offset: Offset(-9, 30),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/bsmq8rbdsnijtp9hbtg5"),
                          ),)
                    ),
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: Text(
                "PES General Meeting",
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
                    color: Color(0xff013473)),

              ),
            ),
            SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on_outlined,size: 30,),
                  ),
                  const SizedBox(width: 20,),
                  const Text(
                    "Venu: Miami center",
                    style: TextStyle(fontSize: 16,
                        color: Colors.black),

                  ),
                ]

            ),
            SizedBox(height: 20,),

            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.watch,size: 30,),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: const [
                      Text(
                        "Date:04-Dec-2022",
                        style: TextStyle(fontSize: 16,
                            color: Colors.black),

                      ),
                      Text(
                        "Time:10:00-21:00",
                        style: TextStyle(fontSize: 16,
                            color: Colors.black),

                      ),
                    ],
                  ),
                  SizedBox(width: 30.0,),
                  const Text(
                    "Price:free",
                    style: TextStyle(fontSize: 18,
                        color: Colors.black),

                  ),
                ]

            ),
            SizedBox(height: 20,),

            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.contacts,size: 30,),
                  ),
                  SizedBox(width: 20,),
                  const Text(
                    "Contact: 22556688",
                    style: TextStyle(fontSize: 16,
                        color: Colors.black),

                  ),
                ]

            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.info_outline,size: 30,),
                  color: Colors.black54,
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                    Text(
                      "About",
                      style: TextStyle(fontSize: 22,
                          color: Colors.black),

                    ),
                    SizedBox(height: 5,),
                  Container(
                    width: double.infinity,
                    child : Text(
                      "Whether you are starting out or at the very height of your career,these are the stepping stones of your professional path.",
                      //"No matter where you are in your journey,\n"
                      //   " IEEE can help you find your path.",
                      style: TextStyle(fontSize: 16,
                          color: Colors.black),

                    ),
                  ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30.0,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Image(
                        width: 50,
                        height: 50,
                        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png")),
                    Image(
                        width: 50,
                        height: 50,
                        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png")),
                    Image(
                        width: 50,
                        height: 50,
                        image: NetworkImage("https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw")),
                  ],
                ),
              ),
            )


          ],
        ),

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
}



