import 'dart:convert';

class UserModel {
    const UserModel({
        required this.name,
        required this.photoUrl,
        this.score = 0,
    });
    
    final String name;
    final String photoUrl;
    final int score;

    /// Parse a map to a UserModel instance
    factory UserModel.fromMap(Map<String, dynamic> map) {
        return UserModel(
            name: map['name'],
            photoUrl: map['photoUrl'],
            score: map['score'],
        );
    }

    /// Parse a json string data to a UserModel instance
    factory UserModel.fromJson(String source) {
        return UserModel.fromMap(json.decode(source));
    }
}