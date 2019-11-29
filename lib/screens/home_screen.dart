import 'package:flutter/material.dart';

import '../model/model.dart';
import '../routes/enter_exit_route.dart';
import 'checklist/checklist_screen.dart';

class HomeScreen extends StatelessWidget {
  final Model model;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Book'),
      ),
      body: ListTile(
        title: Text('Clinical Checklist'),
        onTap: () {
          Navigator.of(context).push(
            EnterExitRoute(
              enterPage: ChecklistScreen(model: model),
              exitPage: this,
            ),
          );
        },
      ),
    );
  }
}
