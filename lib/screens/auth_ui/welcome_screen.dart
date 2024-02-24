import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app_contant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppConstant.appSecondaryColor,
          title: Text(
            "Welcome to my app",
            style: TextStyle(
              color: AppConstant.appTextColor,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Lottie.asset('assets/images/shopit.json'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  "Happy Shopping",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              Material(
                  child: Container(
                      width: Get.width / 1.2,
                      height: Get.height / 12,
                      decoration: BoxDecoration(
                        color:AppConstant.appMainColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton.icon(
                        icon: Image.asset('assets/images/google-logo.png',
                            width: Get.width / 12, height: Get.height / 12),
                        label: Text("Sign in with Google", style:TextStyle(
                          color: AppConstant.appTextColor,
                        ),
                        ),
                        onPressed: () {},
                      ),
                      ),
                      ),

                      SizedBox(
                height: Get.height / 40,
              ),

 Material(
                  child: Container(
                      width: Get.width / 1.2,
                      height: Get.height / 12,
                      decoration: BoxDecoration(
                        color:AppConstant.appMainColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton.icon(
                        icon:Icon(Icons.email,
                        color:AppConstant.appTextColor,
                        ),
                        label: Text("Sign in with Email", style:TextStyle(
                          color: AppConstant.appTextColor,
                        ),
                        ),
                        onPressed: () {},
                      ),
                      ),
                      )

            ],
          ),
        ));
  }
}
