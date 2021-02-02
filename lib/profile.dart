import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signalappclone/pin_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(child: Text('Set Up your profile',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(


                ),
                child: Stack(children: [
                  Container(
                      child: Icon(Icons.person_outline_rounded,size: 70,color: Colors.black,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.grey[300]
                    ),
                    height: 100,
                    width: 100,
                  ),

                  Positioned(
                      bottom: 5,
                      right: 0,
                      child: Container(
                        height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.camera_alt_outlined,size: 20,)))
                ],
                ),
              ),

              SizedBox(height: 20,),

              Center(child: Text("Creative",style: TextStyle(fontSize: 20),)),

              SizedBox(height: 20,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: TextField(
                    controller: myController1,
                    decoration: InputDecoration(
                      hintText: 'First name (required)',
                    ),
                  // onChanged: (String value)async{
                  //     value = await myController1.text;
                  // },
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: TextField(
                    controller: myController2,
                    decoration: InputDecoration(
                      hintText: 'Last name (optional)',
                    ),

                  ),
                ),
              ),

              SizedBox(height: 20,),

              RichText(
                  text:TextSpan (text:'Your profile is end-to-end encrypted> Your profile and'
                  '\nchanges to it will be visible to your contacts, when '
                  '\nyou initiate or accept new conversation, and when'
                  '\nyou join new groups.',
                    style: TextStyle(fontSize: 16,color: Colors.grey[700]),
                    children: <TextSpan>[
                      TextSpan(text: ' Learn more',style: TextStyle(color: Colors.blue)),
                    ]


                  ),
              ),


              SizedBox(
                height: 110,
              ),

              ButtonTheme(
                height: 40,
                minWidth: MediaQuery.of(context).size.width -50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.blue[700],
                  onPressed: () {
                    // Get.offAll(PinPage());
                    Navigator.push(context, MaterialPageRoute(builder: (_) => PinPage()));
                  },

                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
