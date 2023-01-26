import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.green.shade900,
                Colors.green.shade600,
                Colors.green.shade400,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              // #Login, #welcome
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login',
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    SizedBox(height: 10),
                    Text('welcome back',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 45,
                          ),
                          // # Email,#Password
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, 0.7),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Email',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Password',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 40),
                          //#Login
                          Container(
                            alignment: Alignment.center,
                            child: Text('Login',
                                style: TextStyle(color: Colors.white)),
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green.shade800,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          // #login with sms
                          SizedBox(height: 20),
                          Text(
                            'Login with SMS',
                            style: TextStyle(fontSize: 12, color: Colors.blue,fontWeight: FontWeight.bold),
                          ),
                          //#facebook
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('Facebook',
                                      style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold)),
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              // #git hub
                              Expanded(flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('GitHub',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
