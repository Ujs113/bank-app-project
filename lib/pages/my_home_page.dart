import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/pages/forgot_pass.dart';
import 'package:flutter_payment_app/pages/m_transfer.dart';
import 'package:flutter_payment_app/pages/wallet.dart';
import 'package:flutter_payment_app/widgets/buttons.dart';
import 'package:get/get.dart';

import 'balance.dart';
import 'bills.dart';
import 'f_transfer.dart';
import 'int_acc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fill,
            image: AssetImage(
                "images/background.png"
            )
          )
        ),
        height: h,
        width: w,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50,),
              AppButtons(
                icon: Icons.logout_outlined,
                iconColor: Colors.black,
                backgroundColor: Colors.white,
                onTap: (){
                  Get.back();
                },
              ),
              SizedBox(height: 10,),
              MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>IntegrateAccount());
                        },
                        child: Text("Integrate Bank Account",style: TextStyle(fontSize: 22),),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>Wallet());
                        },
                        child: Text("Check Wallet",style: TextStyle(fontSize: 22),),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>Balance());
                        },
                        child: Text("Check Bank Balance",style: TextStyle(fontSize: 22),),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>Bills());
                        },
                        child: Text("Pay Bills",style: TextStyle(fontSize: 22),),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>MoneyTransfer());
                        },
                        child: Text("Money Transfer",style: TextStyle(fontSize: 22),),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=>FundTransfer());
                        },
                        child: Text("Funds Transfer",style: TextStyle(fontSize: 22),),
                      ),
                    ]
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Get.to(()=>ForgotPass());
                },
                child: Text("Change Password",style: TextStyle(fontSize: 22),),
              ),
            ],
          ),
        ),
      )
    );
  }
}