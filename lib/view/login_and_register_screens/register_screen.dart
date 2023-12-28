import 'package:flutter/material.dart';
import 'package:hostel_management_app/utils/color_constants.dart';
import 'package:hostel_management_app/utils/image_constants.dart';
import 'package:hostel_management_app/utils/text_style_constatnts.dart';
import 'package:hostel_management_app/view/global_widgets/login_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.primaryWhiteColor,
              ColorConstants.secondaryWhiteColor2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 80 / 100,
              width: MediaQuery.sizeOf(context).width * 90 / 100,
              decoration: BoxDecoration(
                color: ColorConstants.primaryWhiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(ImageConstants.appLogo)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyleConstants.loginTiltle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyleConstants.dashboardBookingName,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: ColorConstants.colorGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            width: 2, color: ColorConstants.primaryColor),
                      ),
                      hintText: "Enter your Name",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: ColorConstants.colorGrey,
                          fontWeight: FontWeight.w500),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: ColorConstants.primaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyleConstants.dashboardBookingName,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: ColorConstants.colorGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            width: 2, color: ColorConstants.primaryColor),
                      ),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: ColorConstants.colorGrey,
                          fontWeight: FontWeight.w500),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: ColorConstants.primaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your password",
                        style: TextStyleConstants.dashboardBookingName,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            width: 2, color: ColorConstants.colorGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            width: 2, color: ColorConstants.primaryColor),
                      ),
                      hintText: "Pssword ",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: ColorConstants.colorGrey,
                          fontWeight: FontWeight.w500),
                      suffixIcon: Icon(
                        Icons.lock,
                        color: ColorConstants.primaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: LoginButton(buttonName: "Sign up"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
