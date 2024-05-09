// result_page.dart

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? result;

  const ResultPage({Key? key, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Center(
        child: Text(result ?? 'No result'),
      ),
    );
  }
}
