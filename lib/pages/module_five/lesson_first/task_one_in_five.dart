import 'package:flutter/material.dart';

class TaskOneOwn extends StatefulWidget {
  static const  String id = "TaskOneOwn";
  const TaskOneOwn({Key? key}) : super(key: key);

  @override
  State<TaskOneOwn> createState() => _TaskOneOwnState();
}

class _TaskOneOwnState extends State<TaskOneOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.grey.shade700,
              Colors.grey.shade600,
              Colors.grey.shade300,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 40),
            //login password
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 50),),
                  SizedBox(height: 10,),
                  Text("Welcome", style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                    padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, 0.7),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ) ,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Fullname",
                                      hintStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none
                                    ),
                                    ),
                                  ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.black),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(color: Colors.black),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.black),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade700,
                            ),
                            child: const Center(
                              child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Text("Login with SNS", style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 30,),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue
                                  ),
                                  child: const Center(
                                    child: Text("Facebook", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 10,),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red
                                  ),
                                  child: const Center(
                                    child: Text("Google", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.black
                                  ),
                                  child: const Center(
                                    child: Text("Apple", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
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
        title: Text("TaskOneOwn"),
      ),
    );
  }
}
