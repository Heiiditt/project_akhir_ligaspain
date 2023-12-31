import 'package:project_akhir_ligaspain/Model/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../Model/user_model.dart';
import 'login_page.dart';


void main() async {
  await Hive.initFlutter();

  // Register the Hive adapters here
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(FeedbackModelAdapter());

  await Hive.openBox<User>('userBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}