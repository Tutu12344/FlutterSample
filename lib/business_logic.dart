import "dart:math" as math;
import "dart:async";

// Generatorクラス
// データの生成を担当する
class Generator {
  // コンストラクタでint型のStreamを受け取る
  Generator(StreamController<int> intStream) {
    // 10秒に1度、整数の乱数を作ってStreamに流す
    Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        int data = math.Random().nextInt(100);
        print("Generatorが$dataを作ったよ");
        intStream.sink.add(data);
      },
    );
  }
}

// Coordinatorクラス
// データの加工を担当する
class Coordinator {
  // コンストラクタでint型のStreamとString型のStreamを受け取る
  Coordinator(
      StreamController<int> intStream, StreamController<String> stringStream) {
    // 流れてきたものをintからStringにする
    intStream.stream.listen((data) async {
      String newData = data.toString();
      print("Coordinatorが$data(数値)から$newData(文字列)に変換したよ");
      stringStream.sink.add(newData);
    });
  }
}

// Consumerクラス
// データの利用を担当する
class Consumer {
  // コンストラクタでString型のStreamを受け取る
  Consumer(StreamController<String> stringStream) {
    // Streamをlistenしてデータが来たらターミナルに表示する
    stringStream.stream.listen((data) async {
      print("Consumerが$dataを使ったよ");
    });
  }
}
