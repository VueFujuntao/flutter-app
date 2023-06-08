import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:app/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
          title: 'demo',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          theme: ThemeData(
            primaryColor: primary,
          ),
          home: const IndexPage(),
        )
    );
  }
}
