// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text((title)),
          actions: const [],
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.router.back();
                },
                child: const Text("Home"))
          ],
        ));
  }
}
