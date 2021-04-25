class UserModel {
    const UserModel({
        required this.name,
        required this.photoUrl,
        this.score = 0,
    });
    
    final String name;
    final String photoUrl;
    final int score;
}