import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('home'),),
    );
  }


  void initHttp()async {
    try {
      // Response response;
      // response = await Dio().get('')
    } catch(e) {
      return print(e);
    }
  }
}