import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  final String id;
  final String name;
  final String phone;
  final List<String> role;
  final String token; 
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.role,
    required this.token,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? phone,
    List<String>? role,
    String? token,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'role': role,
      'token': token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      role: List<String>.from(map['role']),
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, phone: $phone, role: $role, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.id == id &&
      other.name == name &&
      other.phone == phone &&
      listEquals(other.role, role) &&
      other.token == token;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      phone.hashCode ^
      role.hashCode ^
      token.hashCode;
  }
}
