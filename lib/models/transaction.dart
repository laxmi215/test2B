class Transaction {
  final String date;
  final String description;
  final double amount;

  Transaction({
    required this.date,
    required this.description,
    required this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      date: json['date'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'description': description,
      'amount': amount,
    };
  }

  bool get isDebit => amount < 0;
  bool get isCredit => amount >= 0;
}

class TransactionsData {
  final Map<String, List<Transaction>> transactions;

  TransactionsData({required this.transactions});

  factory TransactionsData.fromJson(Map<String, dynamic> json) {
    Map<String, List<Transaction>> transactionsMap = {};
    var transactionsJson = json['transactions'] as Map<String, dynamic>;
    
    transactionsJson.forEach((key, value) {
      var transactionsList = value as List;
      transactionsMap[key] = transactionsList
          .map((i) => Transaction.fromJson(i))
          .toList();
    });
    
    return TransactionsData(transactions: transactionsMap);
  }

  List<Transaction> getTransactionsForAccount(String accountType) {
    return transactions[accountType] ?? [];
  }
}
