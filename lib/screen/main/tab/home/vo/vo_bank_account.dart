import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  // final String accountNumber;
  // final String accountHolderName;
  int balance;
  final String? accountTypeName;

  BankAccount(
    this.bank,
    // this.accountNumber,
    // this.accountHolderName,
    this.balance, {
    this.accountTypeName, //이렇게 중괄호를 추가하게 되면, accountType은 선언해도되고 선언하지 않아도 됨
  });
}
