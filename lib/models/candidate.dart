class Candidate {
  final int id;
  final String name;
  final int votes;

  Candidate({required this.id, required this.name, required this.votes});

  factory Candidate.fromJson(Map<String, dynamic> data) {
    return Candidate(id: data['id'], name: data['name'], votes: data['votes']);
  }

  Map<String, dynamic> toJson(Candidate candidate) {
    return {
      "id": candidate.id,
      "name": candidate.name,
      "votes": candidate.votes
    };
  }
}
