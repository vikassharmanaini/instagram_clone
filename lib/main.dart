import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/Screen/InstagramHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          dividerTheme: DividerThemeData(
            space: 1,
            thickness: 0.1,
            color: Colors.black,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedIconTheme: IconThemeData(color: Colors.black, size: 28),
              unselectedIconTheme:
                  IconThemeData(color: Colors.black, size: 25)),
          iconTheme: IconThemeData(color: Colors.black, size: 25),
          appBarTheme: AppBarTheme(
            elevation: 0.4,
          )),
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: InstgramMainPage(),
    );
  }
}
