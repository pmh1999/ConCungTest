import 'package:concung/repository/device_repository.dart';
import 'package:concung/views/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constant/cc_text_style.dart';

class LoginPage extends GetWidget<LoginController> {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: SvgPicture.asset('/assets/header.svg'),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  SizedBox(height: 100),
                  Text(
                    'Login',
                    style: CCTextStyle.bold36,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Email',
                    style: CCTextStyle.regular.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Obx(
                    () => Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: controller.emailValid.value
                                    ? Colors.grey
                                    : Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {},
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.zero,
                            isDense: true,
                            border: InputBorder.none,
                            hintStyle: CCTextStyle.regular
                                .copyWith(color: Colors.grey),
                            hintText: "Your email or phone",
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Password',
                    style: CCTextStyle.regular.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Obx(
                    () => Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormField(
                          obscureText: controller.hideText.value,
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () => controller.hideorshowText(),
                                child: Icon(controller.hideText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            // contentPadding: EdgeInsets.zero,
                            isDense: true,
                            border: InputBorder.none,
                            hintStyle: CCTextStyle.regular
                                .copyWith(color: Colors.grey),
                            hintText: "Password",
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Center(
                    child: Text(
                      'Forgot password?',
                      style: CCTextStyle.regularPurple,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        controller.login(
                            emailController.text, passwordController.text);
                      },
                      child: Container(
                          height: 52.h,
                          width: 250.w,
                          decoration: const BoxDecoration(
                              color: Color(0xff5D5FEF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28))),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: CCTextStyle.regular.copyWith(
                                  color: Colors.white, fontSize: 20.sp),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          """Don't have an account? """,
                          style: CCTextStyle.regular,
                        ),
                        Text(
                          """Sign up""",
                          style: CCTextStyle.regularPurple,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        ' Sign in with ',
                        style: CCTextStyle.regular.copyWith(color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 52.h,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromRGBO(44, 44, 44, 0.05),
                                  offset: Offset(0, 0),
                                  blurRadius: 1,
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(44, 44, 44, 0.1),
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Image.asset('assets/facebook.png'),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'FACEBOOK',
                                    style: CCTextStyle.bold,
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 52.h,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromRGBO(44, 44, 44, 0.05),
                                  offset: Offset(0, 0),
                                  blurRadius: 1,
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(44, 44, 44, 0.1),
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Image.asset('assets/google.png'),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'GOOGLE',
                                    style: CCTextStyle.bold,
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
