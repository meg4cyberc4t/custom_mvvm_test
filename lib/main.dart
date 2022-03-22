import 'package:custom_mvvm_test/model.dart';
import 'package:custom_mvvm_test/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 4,
          spacing: 4,
          // mainAxisSize: MainAxisSize.min,
          children: [
            NodeView.init(
              Node(1),
            ),
            NodeView.init(
              Node(2),
            ),
            NodeView.init(
              Node(3),
            ),
          ],
        ),
      ),
    );
  }
}
