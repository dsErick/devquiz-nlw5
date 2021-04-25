class AnswerModel {
    const AnswerModel({
        required this.title,
        this.isRight = false,
    });
    
    final String title;
    final bool isRight;
}