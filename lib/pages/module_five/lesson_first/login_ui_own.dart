import 'package:flutter/material.dart';

class LoginUiOwn extends StatefulWidget {
  static const String id = "LoginUiOwn";
  const LoginUiOwn({Key? key}) : super(key: key);
  @override
  State<LoginUiOwn> createState() => _LoginUiOwnState();
}

class _LoginUiOwnState extends State<LoginUiOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.blueAccent.shade700,
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade100,
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            //#login, #welcome
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 50),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        //email // password
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(171, 171, 171, 0.7),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.red.shade200),
                                  ),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.red),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.red.shade200),
                                  ),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.red),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40,),

                        //Loginn
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueAccent.shade700,
                          ),
                          child: const Center(
                            child: Text("Login", style: TextStyle(color: Colors.yellowAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        const SizedBox(height: 30,),

                        //login with SNS
                        const Text("Login with SNS", style: TextStyle(color: Colors.red),),
                        const SizedBox(height: 30,),

                        //facebook ,//  github
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.indigoAccent
                                  ),
                                  child: const Center(
                                    child: Text("Facebook", style: TextStyle(color: Colors.lightGreenAccent,fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                ),
                            ),

                            const SizedBox(width: 30,),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                ),
                                child: const Center(
                                  child: Text("Github", style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold,fontSize: 18),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("LoginUiOwn"),
      ),
    );
  }
}
