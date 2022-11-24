import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/buttons.dart';
import 'package:flutter_payment_app/widgets/large_buttons.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:80,left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "images/paymentbackground.png"
                )
            )
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h*0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                          "images/success.png"
                      )
                  )
              ),
            ),
            Text(
              "Success !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor
              ),
            ),
            Text(
              "Payment is completed for 2 bills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor
              ),
            ),
            SizedBox(height: h*0.045,),
            Container(
              width: 320,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withOpacity(0.5)
                  )
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index){
                    return  Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 15, left: 20, bottom: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, size: 30, color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "ID: 0789431",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.idColor
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "\$1200.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(thickness: 2, color: Colors.grey.withOpacity(0.5),)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: h*0.03,),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.idColor
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "\$2655.00",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.mainColor
                  ),
                )
              ],
            ),
            SizedBox(height: h*0.13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(icon: Icons.share_sharp, onTap: (){}, text: "Share",),
                SizedBox(width: w*0.15,),
                AppButtons(icon: Icons.print_outlined, onTap: (){}, text: "Print",),
              ],
            ),
            SizedBox(height: h*0.02,),
            AppLargeButton(text: 'Done',backgroundColor: Colors.white, textColor: AppColor.mainColor, textSize: 20, onTap: (){Get.back();},)
          ],
        ),
      ),
    );
  }
}