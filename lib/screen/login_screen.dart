import 'package:d2/const/const_string.dart';
import 'package:d2/screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../custom/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0XFFEBF8F7),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top + size.height * 0.1,
              ),
              Text(
                ConstString.welcome,
                style: TextStyle(
                    fontSize: size.width * 0.072, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                ConstString.toContinue,
                style: TextStyle(
                    fontSize: size.width * 0.07, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ConstString.doNotAccount,
                    style: TextStyle(
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  Text(
                    ConstString.create,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                ConstString.timeTakes,
                style: TextStyle(fontSize: size.width * 0.04),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Text(
                ConstString.email,
                style: TextStyle(
                    fontSize: size.width * 0.042, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                controller: email,
                size: size,
                hint: ConstString.emailHint,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                ConstString.password,
                style: TextStyle(
                    fontSize: size.width * 0.042, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                controller: password,
                size: size,
                hint: ConstString.passwordHint,
                obscure: true,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ConstString.forgot,
                    style: TextStyle(
                        color: const Color(0XFF3D59EF),
                        decoration: TextDecoration.underline,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  decoration: BoxDecoration(
                      color: const Color(0XFF3D59EF),
                      borderRadius: BorderRadius.circular(11)),
                  alignment: Alignment.center,
                  child: Text(
                    ConstString.signIn,
                    style: TextStyle(
                        fontSize: size.width * 0.042,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "  OR  ",
                    style: TextStyle(
                        fontSize: size.width * 0.038,
                        fontWeight: FontWeight.w500),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(11)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.036,
                        width: size.width * 0.07,
                        child: Image.asset("assets/images/google.png"),
                      ),
                      const SizedBox(width: 8,),
                      Text(
                        ConstString.google,
                        style: TextStyle(
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF3D59EF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
