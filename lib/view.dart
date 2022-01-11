import 'package:counter/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future<void> _showResult() async {
  //   context.read<MainViewModel>().increment();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   Future.microtask(() => _showResult());
  // }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              viewModel.bodyTxt,
            ),
            Text(
              viewModel.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();
        },
        tooltip: viewModel.toolTip,
        child: const Icon(Icons.add),
      ),
    );
  }
}
