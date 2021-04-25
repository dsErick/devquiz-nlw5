class UserModel {
    const UserModel({
        required this.name,
        required this.photoUrl,
        required this.score,
    });
    
    final String name;
    final String photoUrl;
    final int score;
}