import 'package:hive_flutter/hive_flutter.dart';

class YellowDataBase {
  List YellowList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    YellowList = [
      ["Entregar trabalho hoje para o sor", false],
      ["Comprar a ração dos dogs", false],
    ];
  }

  void loadData() {
    YellowList = _myBox.get("YellowNote");
  }

  void updateDataBase() {
    _myBox.put("YellowNote", YellowList);
  }
}
