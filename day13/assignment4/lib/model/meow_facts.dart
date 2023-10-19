class MeowFacts {
  List<String> data;
  MeowFacts({
    required this.data,
  });

  factory MeowFacts.fromMap(Map<String, dynamic> map) {
    return MeowFacts(
      data: List<String>.from(
        (map['data']),
      ),
    );
  }

  @override
  String toString() {
    return "MeowFact($data)";
  }
}
