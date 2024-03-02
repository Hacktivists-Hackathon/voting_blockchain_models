class TransactionModel {
  final String id;
  final String candidateId;
  final DateTime? createdDate;

  TransactionModel(
      {required this.id, required this.candidateId, this.createdDate});

  factory TransactionModel.fromJson(Map<String, String> data) {
    return TransactionModel(id: data['id']!, candidateId: data['candidateId']!);
  }

  Map<String, String> toJson(TransactionModel transactionModel) {
    return {
      "id": transactionModel.id,
      "candidateId": transactionModel.candidateId
    };
  }
}
