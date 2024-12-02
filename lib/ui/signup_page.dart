import 'package:egy_metro/ui/animated_page_transition.dart';
import 'package:egy_metro/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/navigation_cubit.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              Text(
                "Sign up",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Create a new account",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "First name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Last name"
                      ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(labelText: "Email"
                ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(labelText: "National ID"
                ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(labelText: "Password"
                ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                obscureText: true,
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(labelText: "Confirm Password"
                ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                obscureText: true,
              ),
              
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // TODO: Add Sign-Up Logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 80.0),
                ),
                child: Text("Continue",
                style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateWithAnimation(context, LoginPage());
                },
                child: Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
