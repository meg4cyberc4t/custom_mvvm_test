# custom_mvvm_test

This is an example of how using the Provider package, you can easily build an mvvm architecture (and not use a block where it is not needed))

## Getting Started

In the model.dart file, our model, in my case, is Node with one field.

```dart
class Node {
  Node(this.id);
  int id;
}
```

We also need to create a ViewModel class inherited from ChangeNotifier, with which we implement all the logic of getting or changing the data of our widget.

_The increment example is the simplest thing I came up with. There may be sending or receiving data from the server_

```dart

class NodeModelView with ChangeNotifier {
  NodeModelView(this.node);
  Node node;

  void increment() {
    node.id += 1;
    notifyListeners();
  }
}

```

Well, actually your widget. There can be anything.

_In my case it's just a button_

```dart
@override
  Widget build(BuildContext context) {
    return Consumer<NodeModelView>(
      builder: (context, value, ___) => FloatingActionButton.large(
        child: Text(value.node.id.toString()),
        onPressed: () => value.increment(),
      ),
    );
  }
```

In final.

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChangeNotifierProvider(
          create: (context) => NodeModelView(Node(1)),
          child: const NodeView(),
        ),      ),
    );
  }
```

### Process

1. Getting data from the server (loading screen) 
2. Create a ChangeNotifierProvider and create a Node Model View from it
3. Changes go through NodeModelView
4. Any model changes will be caught by its View and changed automatically

### Thank you for your attention <3