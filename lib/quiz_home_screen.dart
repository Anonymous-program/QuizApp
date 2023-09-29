import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_view.dart';
import 'package:quiz_app/quiz_model.dart';
import 'package:quiz_app/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Timer timer;
  int count=60;
  @override
  void initState() {
   timer=Timer.periodic(const Duration(seconds: 1), (timer) {
     setState(() {
       if(count>0){
         count--;
       }
       else{
         timer.cancel();
        if(count==0){
       Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(result: count,),));
       }

       }
     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          ElevatedButton(
            onPressed: () {
              _finishQuiz();
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
               child: const Text('Finish',style: TextStyle(
                 color: Colors.white,
               ),),
          ),
        ],
        title: const Text('Dart quiz'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('$count',style: Theme.of(context).textTheme.headlineLarge,),
          Expanded(
            child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, index) {
                final quesModel = questionList[index];
                return QuestionView(
                  index: index + 1,
                  quizModel: quesModel,
                  onSubmit: (value) {
                    setState(() {
                      questionList[index].givenAnswer = value;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _finishQuiz() {
    setState(() {
      int total = 0;
      for (final quizModel in questionList) {
        if (quizModel.rightAnswer == quizModel.givenAnswer) {
          total++;
        }
      }
      for (final quizModel in questionList) {
       quizModel.givenAnswer='';
      }
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(result: total),
          ));
    });
  }
}
