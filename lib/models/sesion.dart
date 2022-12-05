import 'package:face_app/models/user.dart';

class Sesion {
  final String token;
  final User user;
  static Sesion? _sesion;

  Sesion._(this.token, this.user);

  factory Sesion.create(String token, User user) {
    return _sesion ??= Sesion._(token, user);
  }

  factory Sesion() {
    if (_sesion == null) throw 'session not found';

    return _sesion!;
  }
}
