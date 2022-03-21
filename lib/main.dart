import 'package:custom_mvvm_test/model.dart';
import 'package:custom_mvvm_test/viewmodel.dart';
import 'package:custom_mvvm_test/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        child: ChangeNotifierProvider(
          create: (context) => NodeModelView(Node(1)),
          child: const NodeView(),
        ),
      ),
    );
  }
}
