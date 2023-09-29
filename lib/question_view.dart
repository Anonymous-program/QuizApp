import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_model.dart';

class QuestionView extends StatelessWidget {
  final int index;
  final QuizModel quizModel;
  final Function(String) onSubmit;
  const QuestionView(
      {super.key,
      required this.index,
      required this.quizModel,
      required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$index ${quizModel.question}',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        for (int i = 0; i < quizModel.options.length; i++)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal:10,
                ),
                child: Radio(
                    value: quizModel.options[i],
                    groupValue: quizModel.givenAnswer,
                    onChanged: (value) {
                      onSubmit(value!);
                    }),
              ),
              Text(quizModel.options[i]),
            ],
          ),
      ],
    );
  }
}
