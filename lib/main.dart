// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tesing_1/login_page.dart';
import 'package:tesing_1/stack_demo.dart';
import 'package:tesing_1/table_demo.dart';
import 'package:tesing_1/wrap_demo.dart';

import 'custom_multi_childLayout.dart';
import 'custom_single_child_layout.dart';
import 'grid_view_demo.dart';

void main() {
  var _title = 'CELL KULR TECHNOLOGY';
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interest Calculator",
    home: Scaffold(
      appBar: AppBar(title:  Text(_title)),
      body: const LoginPageDemo(),
    ),
    theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 140, 228, 26),
        accentColor: Colors.cyan),
  ));
}


