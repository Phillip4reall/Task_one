import 'package:flutter/material.dart';
import 'package:task1/webview_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Center(
            child: Column(children: [
              const CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                  'images/abc.jpg',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Oyeladun Olugbenga Phillip',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Mobile dev Tracks',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'HNGx Internship',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 300,
                color: Colors.blue,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MywebView()));
                  },
                  child: const Text(
                    'Open GitHub',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
