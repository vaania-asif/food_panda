import 'package:flutter/material.dart';
import 'package:food_panda/authentication/loginScreen.dart';
import 'package:food_panda/mainScreen.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('images/logo.png'),
              ),

              const SizedBox(height: 10,),

              const Text(
                'Register as a User',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),),

              TextField(
                controller: nameTextEditingController,
                style: const TextStyle(
                  color: Colors.black38,
                ),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Name',

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,),

                ),

              ),

              TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Colors.black38,
                ),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'xyz@gmail.com',

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,),

                ),

              ),

              TextField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  color: Colors.black38,
                ),
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: '03*********',

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,),

                ),

              ),

              TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.black38,
                ),
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Atleast 8 letters',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,),

                ),

              ),


              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),

              TextButton(
                  child: const Text(
                    "Already have an Account? Login.",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (c) => loginScreen()),);
                  }


              ),
            ],
          ),
        ),
      ),
    );

  }
}
