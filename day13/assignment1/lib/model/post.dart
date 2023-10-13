// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  String name;
  MBTI? mbti;
  String residence;
  int age;

  Post({
    required this.name,
    this.mbti,
    required this.residence,
    required this.age,
  });
}

enum MBTI {
  INFP,
  INFJ,
  INTP,
  INTJ,
  ISFP,
  ISFJ,
  ISTP,
  ISTJ,
  ENFP,
  ENFJ,
  ENTP,
  ENTJ,
  ESFP,
  ESFJ,
  ESTP,
  ESTJ,
}
