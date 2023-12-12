import 'package:flutter/material.dart';

import 'VideoApp.dart';
import 'audioApp.dart';

class Deshbord extends StatefulWidget {
  const Deshbord({super.key});

  @override
  State<Deshbord> createState() => _DeshbordState();
}

class _DeshbordState extends State<Deshbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(''),
            bottom: TabBar(tabs: [
              Tab(text: 'video player',),
              Tab(text: 'Audio player',)
            ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: VideoApp(),
            ),
            Center(
              child: audioApp(),
            ),
          ]),
        ),
      ),
    );
  }
}
