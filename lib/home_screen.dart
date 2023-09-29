import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                child: const Text('Start Quiz',style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
