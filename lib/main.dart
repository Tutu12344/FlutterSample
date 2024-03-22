import 'user.dart';

void main() {
  //ユーザを3つ作成する user1と3は同じ
  User user1 = User('kazutxt', 30);
  User user2 = User('FakeName', 30);
  User user3 = User('kazutxt', 30);

  //表示(toString)のテスト
  print("toStringのテスト");
  print(user1);

  //比較(==)のテスト
  print("比較のテスト");
  if (user1 == user2) print("user1とuser2は同じ人");
  if (user1 == user3) print("user1とuser3は同じ人");

  // コピーをして新しいインスタンスを作るテスト
  print("コピーのテスト");
  User user4 = user1.copyWith(name: "unknown"); //ageはuser1のまま
  print(user4);

  // 代入そのものはOK
  print("代入のテスト");
  user2 = user3;
  print(user2); // user3の情報が表示される

  // Immutableを破壊するので、以下のような使い方はNG
  // user1.name = "unknown";
}
