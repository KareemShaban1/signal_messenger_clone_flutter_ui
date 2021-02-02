import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [

                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green[800]
                            ),
                            child: Center(child: Text('c',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),
                          SizedBox(width: 20,),
                          Text('Signal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.black,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.more_vert,color: Colors.black,),
                          )],
                      ),
                    ),


                  ],
                ),



              SizedBox(height: 60,),

              Center(child: Text('No chats yet.',style: TextStyle(fontSize: 17),)),
              Center(child: Text('Get started by messaging a friend',style: TextStyle(fontSize: 17),)),

              SizedBox(height: 330,),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Icon(Icons.camera_alt))
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Icon(Icons.edit,color: Colors.white,))
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
