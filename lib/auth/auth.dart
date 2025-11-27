import 'package:get_storage/get_storage.dart';
import 'package:wandjam/models/user_models.dart';

class Auth {
  final _storage = GetStorage();

  final String _isLoggedInKey = 'isLoggedIn';
  final String _userKey = 'user';
  final String _boutiqueKey = 'boutique';

  bool isLoggedIn() {
    return _storage.read(_isLoggedInKey) ?? false;
  }

  void saveUser(UserModel dataUser) {
    _storage.write(_isLoggedInKey, true);
    _storage.write(_userKey, dataUser.toMap());
  }

  UserModel? getUser() {
    final userMap = _storage.read(_userKey);
    if (userMap != null) {
      return UserModel.fromMap(userMap);
    }
    return null;
  }

  void logout({required Function onFinish}) async {
    _storage.write(_isLoggedInKey, false);
    _storage.write(_userKey, null);
    _storage.write(_boutiqueKey, null);
    onFinish();
  }
}
