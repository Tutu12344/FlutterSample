import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mydata.freezed.dart';

@freezed
class MyData with _$MyData {
  const factory MyData({@Default(0.5) double value}) = _MyData;
}

//Providerで使うNotifier
class MyDataStateNotifier extends StateNotifier<MyData> {
  MyDataStateNotifier() : super(const MyData());
  //値の書き換えはcopyWWithで別インスタンスにする
  changeState(newValue) {
    state = state.copyWith(value: newValue);
    //変更の確認のためprintで情報を表示
    print("value:${state.value}, hashCode:${state.hashCode}");
  }
}
