import 'package:flutter/material.dart';
import 'package:soccer_app/views/results_view/widgets/result_view_body.dart';

import 'widgets/result_bundesliga_view.dart';


class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        backgroundColor: Color.fromARGB(255, 19, 231, 72),
      ),
      backgroundColor: Color.fromARGB(255, 75, 225, 37),
      body: const ResultViewBody(),
    );
  }
}
