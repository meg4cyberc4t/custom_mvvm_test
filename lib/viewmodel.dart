import 'package:flutter/foundation.dart';

import 'model.dart';

class NodeModelView with ChangeNotifier {
  NodeModelView(this.node);
  Node node;

  void increment() {
    node.id += 1;
    notifyListeners();
  }
}
