import 'package:flutter/material.dart';
import 'package:studentappgraph/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' :(context) => dashboardPage(),
        //'/a' :(context) => StepGraph(token : "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMzhIQ0YiLCJzdWIiOiI5WjdQNkYiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJyd2VpIHJociByc2V0IHJhY3QgcnNsZSIsImV4cCI6MTY1ODc4MDE2MCwiaWF0IjoxNjU4MTc2MzQwfQ.FAzaWrSnzZpk3N91NFLPmBcNZEUsWyIwrxs2x4c7NQo"),

      },
      theme: ThemeData(
        primaryColor: Colors.grey.shade100,
      scaffoldBackgroundColor: Colors.grey.shade100),
      title: "Fitbit Graph",
    );
  }
}
/*
#fitbittest02 complete base utk step count, tinggal:
  =implemen read token dari luar
  =set utk read last 7 day (done)

#limitspace utk test graph compability in small space


*/