import 'dart:convert';

class AnswerModel {
    const AnswerModel({
        required this.title,
        this.isRight = false,
    });
    
    final String title;
    final bool isRight;

    Map<String, dynamic> toMap() {
        return {
            'title': title,
            'isRight': isRight,
        };
    }

    factory AnswerModel.fromMap(Map<String, dynamic> map) {
        return AnswerModel(
            title: map['title'],
            isRight: map['isRight'] ?? false,
        );
    }

    String toJson() => json.encode(toMap());

    factory AnswerModel.fromJson(String source) {
        return AnswerModel.fromMap(json.decode(source));
    }
}
