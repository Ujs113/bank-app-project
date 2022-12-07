import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/database.dart';
import 'package:get/get.dart';

class IntegrateAccount extends StatelessWidget {
  IntegrateAccount({Key? key}) : super(key: key);

  final TextEditingController accNoCont = TextEditingController();
  final TextEditingController bankCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Link Bank Account"),),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit:BoxFit.fill,
                image: AssetImage(
                    "images/background.png"
                )
            )
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    controller: bankCont,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                      labelText: 'Bank Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    obscureText: true,
                    controller: accNoCont,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                      labelText: 'Account No.',
                    ),
                  ),
                ),
                Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Begin Account Integration',style: TextStyle(fontSize: 20),),
                      onPressed: () {
                        User? user = FirebaseAuth.instance.currentUser;
                        addAccount(bankCont.text, accNoCont.text, user!);
                        Get.back();
                      },
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
