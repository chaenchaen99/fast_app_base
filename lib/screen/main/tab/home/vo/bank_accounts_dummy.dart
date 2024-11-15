import 'package:fast_app_base/screen/main/tab/home/vo/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 300000000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bankTtoss, 5000000);
final bankAccountKakao =
    BankAccount(bankKakao, 7000000, accountTypeName: "입출금통장");

//List: 순서를 보장하고 있는 객체들의 정렬된 집합
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];

//Map : key와 value로 이뤄진 객체들의 집합
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2,
};

//Set : 순서가 보장되지 않고, 중복을 허용하지 않는 객체들의 집합
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
};
main() {
  print(bankSet.contains(bankAccountShinhan1));
  //시간 복잡도 : O(1)

  print(bankAccounts.contains(bankAccountShinhan1));
  //시간 복잡도 : O(n)
}
