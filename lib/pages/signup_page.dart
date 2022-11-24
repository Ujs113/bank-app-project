import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../component/AuthHelper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'User Registration',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                SizedBox(height: 30,),
                Center(child: Text("Enter your details", style: TextStyle(fontSize: 22,color: Colors.white),)),
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    controller: nameController,
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
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    obscureText: true,
                    controller: passwordController,
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
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    obscureText: true,
                    controller: rePasswordController,
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
                      labelText: 'Re-Enter Password',
                    ),
                  ),
                ),
                Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Sign Up',style: TextStyle(fontSize: 20),),
                      onPressed: () async {
                        User? user = await AuthHelper.register(name: nameController.text, email: nameController.text, password: passwordController.text);
                        
                        if(user != null)
                          Get.back();
                      },
                    )
                ),
              ],
            )),
      ),
    );
  }
}
