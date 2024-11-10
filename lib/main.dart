import 'package:drivers_app/screens/auth/register_screen.dart';
import 'package:drivers_app/shared/styles/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //After reciving error of blanck screen ( i have intialized project details in firebase intailization )
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          // key to check any request from the app
          apiKey: "AIzaSyB3t-PIrTiXvTG7RAHQt5EuGgpPN6LJVd0",
          // unique id
          appId: "1:271357273680:android:66f1344e273395d2495355",
          //id sender to push notification for the sender
          messagingSenderId: "271357273680",
          //project id to let firebase know my own project
          projectId: "flutter-uber-d8ab9"));
  runApp(const DriversApp());
}

class DriversApp extends StatelessWidget {
  const DriversApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drivers App",
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: RegisterScreen(),
    );
  }
}
