import 'package:flutter/material.dart';
import 'package:flutter_basics/advanced/answer_button.dart';
import 'package:flutter_basics/advanced/data/questions.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(Object context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
             Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map((item) {
              return AnswerButton(item, () {});
            }),
          ],
        ),
      ),
    );
  }
}