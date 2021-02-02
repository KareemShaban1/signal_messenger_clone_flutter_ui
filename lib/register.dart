import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'codepage.dart';
import 'controller/controller.dart';
import 'contries.dart';

class Register extends StatefulWidget {

  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var controller = Get.put(AppController());
  TextEditingController contryname = TextEditingController();
  TextEditingController contrycode = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Obx(() {
            contryname.text = controller.selectcodename.value;
            contrycode.text = controller.selecteddial.value;
            print(controller.selectcodename);

            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(height: 30,),

                  Center(
                    child: Text(
                      "Enter your phone\n number to get started",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "You will recevie a verification code\n Carrier rates may apply.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 330,
                    child: TextField(
                      controller: contryname,
                      onTap: () {
                        Get.to(Listofcountry());
                      },
                      decoration: InputDecoration(
                          hintText: "Choose your country",
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 330,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: contrycode,
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                                hintText: "+ 00",
                                enabled: false,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                hintText: "Phone Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ButtonTheme(
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width-80,
                    child: RaisedButton(

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: Colors.blue[700],
                      onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (_) => CodePage()));
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )

                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
