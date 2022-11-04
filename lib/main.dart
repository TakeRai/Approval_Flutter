import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:newchat/view/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: "/home",
        builder: (context,state){
          return HomePage();
        }
        ),
      // GoRoute(
      //   path: "/login",
      //   builder: (context, state) {
      //     return LoginPage();
      //   },
      // )
    ]
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      
      routerDelegate: _router.routerDelegate,

      title: 'Adam Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}




