import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
 

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class  _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size. height * .3,
            decoration: const BoxDecoration(
              color: Color(0xff7c94b6),
            )
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          children: [
            Container(
              height: 64,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const CircleAvatar(
                    radius: 32,
                   backgroundImage: NetworkImage('https://images.unsplash.com/photo-1548783300-70b41bc84f56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'), 
                  ),
                  SizedBox(width: 16,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Patient name",style: TextStyle(fontSize:24,fontStyle: FontStyle.italic,color: Colors.white))
                  ],
                 )
                ],
              ),
            ),
            GridView.count(
              mainAxisSpacing:10,
              crossAxisSpacing: 10,
              primary: false,
              children:  [
                Card(
                  child: Column(
                    children: [
                      

                    ],
                  ),
                )
              ],
              crossAxisCount: 2)
          ],
      ),
        ),)
      ],
      ),
    );
  }
}