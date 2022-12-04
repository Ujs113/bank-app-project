import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Current Balances"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fill,
            image: AssetImage(
                "images/background.png"
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 4),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFd8dbe0),
                                  offset: Offset(1,1),
                                  blurRadius: 20.0,
                                  spreadRadius: 15
                              )
                            ]
                          ),
                          child: Center(child: Text("AXIS BANK",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),
                        ),
                        SizedBox(height: 10,),
                        Text("Balance: \$10000",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: (){
                                //URL to get email statement
                              },
                              child: const Text("Get Bank Statement",style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        SizedBox(height: 8,),

                      ],
                    )
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
