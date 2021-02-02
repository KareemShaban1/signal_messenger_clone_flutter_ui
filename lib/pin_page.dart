import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signalappclone/home.dart';

class PinPage extends StatefulWidget {
  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.transparent,
           shadowColor: Colors.transparent,
           actions: [
             Icon(Icons.more_vert,color: Colors.black,)
           ],
         ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),

                Center(child: Text('Create your PIN',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),)),
                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: RichText(
                    text:TextSpan (text:' PINs keep information stored with'
                        '\n  Signal encrypted so only you can '
                        '\n     access it. Your profile, settings, '
                        '\n  and contacts will restore when you'
                        "\nreinstall . You won't need your PIN to"
                        '\n         open the app.',
                        style: TextStyle(fontSize: 18,color: Colors.grey[700]),
                        children: <TextSpan>[
                          TextSpan(text: ' Learn more',style: TextStyle(color: Colors.blue)),
                        ]
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Container(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '',
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text('PIN must be at least 4 digits',style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
                ),

                SizedBox(height: 150,),


                Center(child: Text('CREATE ALPHANUMERIC PIN',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),)),

                SizedBox(height: 20,),



                ButtonTheme(
                  height: 40,
                  minWidth: MediaQuery.of(context).size.width -50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.blue[700],
                    onPressed: () {
                      // Get.offAll(PinPage2());
                      Navigator.push(context, MaterialPageRoute(builder: (_) => PinPage2()));
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
    ));
  }
}

class PinPage2 extends StatefulWidget {
  @override
  _PinPage2State createState() => _PinPage2State();
}

class _PinPage2State extends State<PinPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 300,),
            Text('Re-entry your PIN ',style: TextStyle(fontSize: 20),),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
              ),
            ),

            SizedBox(height: 50,),

            ButtonTheme(
              height: 40,
              minWidth: MediaQuery.of(context).size.width -50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.blue[700],
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                  // Get.offAll(HomePage());
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

    );
  }
}

