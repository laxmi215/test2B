class Account {
  final String type;
  final String accountNumber;
  final double balance;

  Account({
    required this.type,
    required this.accountNumber,
    required this.balance,
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      type: json['type'] as String,
      accountNumber: json['account_number'] as String,
      balance: (json['balance'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'account_number': accountNumber,
      'balance': balance,
    };
  }
}

class AccountsData {
  final List<Account> accounts;

  AccountsData({required this.accounts});

  factory AccountsData.fromJson(Map<String, dynamic> json) {
    var accountsList = json['accounts'] as List;
    List<Account> accounts = accountsList.map((i) => Account.fromJson(i)).toList();
    return AccountsData(accounts: accounts);
  }
}
