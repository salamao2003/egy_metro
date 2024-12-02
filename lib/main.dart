import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/navigation_cubit.dart';
import 'ui/login_page.dart';
import 'ui/signup_page.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => NavigationCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          if (state == 1) {
            return SignUpPage();
          }
          return LoginPage();
        },
      ),
    );
  }
}
