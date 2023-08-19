import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Simple Example'),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.4, 0.7, 1.0],

          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Center(
          child: Text('This widget is below the SlidingSheet'),
        ),
        builder: (context, state) {
           return Container(
            height: 500,
            child: Center(
              child: Text('This is the content of the sheet'),
            ),
          );
        },
      ),
    );
  }
}
