class CandidateModel {
  final int id;
  final String name;
  final int votes;

  CandidateModel({required this.id, required this.name, required this.votes});

  factory CandidateModel.fromJson(Map<String, dynamic> data) {
    return CandidateModel(
        id: data['id'], name: data['name'], votes: data['votes']);
  }

  static Map<String, dynamic> toJson(CandidateModel candidate) {
    return {
      "id": candidate.id,
      "name": candidate.name,
      "votes": candidate.votes
    };
  }
}
