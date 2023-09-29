import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home_screen.dart';
import 'package:quiz_app/quiz_model.dart';

class ResultPage extends StatelessWidget {
  final int result;
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Correct Answer = $result',
              style: Theme.of(context).textTheme.titleLarge,
            ),
           const SizedBox(height: 30,),
            Text(
              'Out of ${questionList.length}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: const Text(
                'Again Start ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}