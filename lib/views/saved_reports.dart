import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SavedReportspage extends StatelessWidget {
  const SavedReportspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: TextWidget(
            text: 'Saved Patient Reports',
            isHeading: true,
          )),
          backgroundColor: Colors.lightGreen,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(35, 35, 35, 35),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'All saved reports for your clients will appear here',
                  colors: Colors.indigo,
                ),
                ElevatedButton(
                    onPressed: () {}, child: TextWidget(text: 'Close'))
              ],
            ),
          ),
        ));
  }
}
