import 'package:custom_mvvm_test/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NodeView extends StatefulWidget {
  const NodeView({Key? key}) : super(key: key);

  @override
  State<NodeView> createState() => _NodeViewState();
}

class _NodeViewState extends State<NodeView> {
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
