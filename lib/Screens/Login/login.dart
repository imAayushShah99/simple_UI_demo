import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SimpleShadow(
                opacity: 0.6, // Default: 0.5
                color: Colors.black, // Default: Black
                offset: Offset(5, 5), // Default: Offset(2, 2)
                sigma: 7,
                child: ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 40),
                    height: 120,
                    color: Colors.white,
                    child: Center(
                      child: Image.asset(
                        'assets/google.png',
                      ),
                    ),
                  ),
                ),
              ),
              // Neumorphic(),
              IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    // height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12),
                      ),
                      // border: Border.all(
                      //   color: Color.fromARGB(166, 231, 229, 236),
                      // ),
                      color: Color.fromARGB(255, 165, 160, 216),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromARGB(130, 23, 22, 94),
                          offset: Offset(6, 6),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text('Login'),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          // onSaved: (newValue) => setState(
                          //   () {
                          //     email = newValue.toString();
                          //   },
                          // ),
                          onChanged: (value) {
                            setState(
                              () {
                                email = value;
                              },
                            );
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email";
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Please enter correct email";
                            } else {}
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(10),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Email Id",
                            prefixIcon: Icon(
                              Icons.person_outline_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          // onSaved: (newValue) => setState(
                          //   () {
                          //     password = newValue.toString();
                          //   },
                          // ),
                          onChanged: (value) {
                            setState(
                              () {
                                password = value;
                              },
                            );
                          },
                          validator: (value) {
                            if (value!.length < 8) {
                              return "Enter Atleast 8 Character";
                            } else {}
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(10),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(10),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(10),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(10),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: password.length >= 1 && email.length >= 1
                        ? Colors.black
                        : Colors.white),
                onPressed: () {
                  if (password.length >= 1 && email.length >= 1) {
                    print('It is called');
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      formKey.currentState!.save();
                      print('Everything right');
                    }
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
