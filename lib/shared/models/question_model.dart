import 'answer_model.dart';

class QuestionModel {
    const QuestionModel({
        required this.title,
        required this.answers
    }) : assert(answers.length == 4);
    
    final String title;
    final List<AnswerModel> answers;
}