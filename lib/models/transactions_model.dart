class TransactionModel {
  final String id;
  final String candidateId;
  final DateTime? createdDate;

  TransactionModel(
      {required this.id, required this.candidateId, this.createdDate});

  factory TransactionModel.fromJson(Map<String, dynamic> data) {
    return TransactionModel(id: data['id']!, candidateId: data['candidateId']!);
  }

  Map<String, dynamic> toJson(TransactionModel transactionModel) {
    return {
      "id": transactionModel.id,
      "candidateId": transactionModel.candidateId
    };
  }
}
