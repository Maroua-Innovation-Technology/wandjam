import 'dart:convert';

import 'local_storage.dart';

class RepositoryLocalStorage {
  var storage = LocalStorage();
  setList({required List<dynamic> data, required String key}) =>
      saveDataToLocal(data: data, key: key);

  void saveDataToLocal({required List<dynamic> data, required String key}) =>
      storage.write(key: key, value: jsonEncode(data));
}
