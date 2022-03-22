import 'package:custom_mvvm_test/model.dart';
import 'package:custom_mvvm_test/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NodeView extends StatelessWidget {
  const NodeView({Key? key}) : super(key: key);

  static Widget init(Node node) {
    return ChangeNotifierProvider(
      create: (context) => NodeModelView(node),
      child: const NodeView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NodeModelView>(
      builder: (context, value, ___) => FloatingActionButton.large(
        child: Text(value.node.id.toString()),
        onPressed: () => value.increment(),
      ),
    );
  }
}
