// ignore_for_file: prefer_const_constructors
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class MywebView extends StatefulWidget {
  const MywebView({super.key});

  @override
  State<MywebView> createState() => _MywebViewState();
}

class _MywebViewState extends State<MywebView> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://flutter.dev'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GitHub Profile',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
