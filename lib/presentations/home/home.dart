import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/routes/app_router.gr.dart';
import 'package:flutter_01/widgets/column_icon_with_label.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: "Navigation Menu",
          onPressed: () => {},
        ),
        title: const Text(
          "My App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.person_rounded))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // * default routing using material page route
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const Dashboard(
              //           title: "Dashboard",
              //         )));

              // * routing using auto route
              AutoRouter.of(context).push(Dashboard(title: "test"));
            },
            child: const Text("Dashboard"),
          ),
          Container(
            height: 72,
            color: Colors.grey[200],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColumnIconWithLabel(
                  label: "Call",
                  labelColor: Colors.blue,
                  icon: Icons.call,
                  iconColor: Colors.blue,
                ),
                ColumnIconWithLabel(
                  label: "Route",
                  labelColor: Colors.blue,
                  icon: Icons.send,
                  iconColor: Colors.blue,
                ),
                ColumnIconWithLabel(
                  label: "Share",
                  labelColor: Colors.blue,
                  icon: Icons.share,
                  iconColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
