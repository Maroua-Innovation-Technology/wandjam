import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class LocalStorage {
  final GetStorage _box;

  static final LocalStorage _instance = LocalStorage._internal(GetStorage());

  factory LocalStorage() {
    return _instance;
  }

  LocalStorage._internal(this._box);

  static Future<void> init() async {
    await GetStorage.init();
  }

  Future<void> write<T>({required String key, required T value}) async {
    try {
      await _box.write(key, value);
    } catch (e) {
      debugPrint('Erreur lors de l\'écriture de la clé $key : $e');
    }
  }

  T? read<T>({required String key}) {
    try {
      return _box.read<T>(key);
    } catch (e) {
      debugPrint('Erreur lors de la lecture de la clé $key : $e');
      return null;
    }
  }

  Future<void> delete({required String key}) async {
    try {
      await _box.remove(key);
    } catch (e) {
      debugPrint('Erreur lors de la suppression de la clé $key : $e');
    }
  }

  bool containsKey({required String key}) {
    return _box.hasData(key);
  }

  Future<void> clear() async {
    try {
      await _box.erase();
    } catch (e) {
      debugPrint('Erreur lors de l\'effacement du stockage : $e');
    }
  }
}
