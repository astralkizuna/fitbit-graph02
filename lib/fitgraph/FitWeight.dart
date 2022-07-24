import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class FitWeightGraph extends StatefulWidget {
  const FitWeightGraph({Key? key, required this.token}) : super(key: key);
  final String token;

  @override
  State<FitWeightGraph> createState() => _FitWeightGraphState(token);
}

class _FitWeightGraphState extends State<FitWeightGraph> {
  String token;
  _FitWeightGraphState(this.token);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}