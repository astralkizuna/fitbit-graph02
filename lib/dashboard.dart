import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:studentappgraph/fitgraph/FitHeart.dart';
import 'package:studentappgraph/fitgraph/FitSleep.dart';
import 'package:studentappgraph/fitgraph/FitStep.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  var token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMzhIVkciLCJzdWIiOiI5WjdQNkYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyd2VpIHJociByYWN0IHJzbGUiLCJleHAiOjE2NTg4MzEzNTUsImlhdCI6MTY1ODMyOTEwNH0.z9KEJJOKx1JU6morNhl-9Ev9yEG6UVcSZXF7M0dsThs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text("Token : \n$token"),
            const SizedBox(
              width: 400,
              height: 25,
            ),
            TextButton(
              child: const Text("Heart Rate"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FitHeartGraph(token: token)),
                );
              }
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text("Step Count"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FitStepGraph(token: token)),
                );
              }
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text("Sleep Log"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FitSleepGraph(token: token)),
                );
              }
            ),
          ],
        )
      )
    );
  }
}