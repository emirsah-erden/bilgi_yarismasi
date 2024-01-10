import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, Key? key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Expanded(
              child: Row(
                children: [
                  Text(((data["question_index"] as int) + 1).toString()),
                  Column(
                    children: [
                      Text(data["question"] as String),
                      SizedBox(height: 5),
                      Text(data["correct_answer"] as String),
                      SizedBox(height: 5),
                      Text(data["user_answer"] as String),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
