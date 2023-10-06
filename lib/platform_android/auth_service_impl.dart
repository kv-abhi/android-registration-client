import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_client/pigeon/auth_response_pigeon.dart';
import 'package:registration_client/pigeon/packet_auth_pigeon.dart';
import 'package:registration_client/pigeon/user_pigeon.dart';

import 'package:registration_client/platform_spi/auth_service.dart';

class AuthServiceImpl implements AuthService {
  @override
  Future<User> validateUser(String username, String langCode) async {
    late User user;
    try {
      user = await UserApi().validateUser(username, langCode);
    } on PlatformException {
      debugPrint('UserApi call failed');
    } catch (e) {
      debugPrint('User not fetched! ${e.toString()}');
    }
    return user;
  }

  @override
  Future<AuthResponse> login(
      String username, String password, bool isConnected) async {
    late AuthResponse authResponse;
    try {
      authResponse =
          await AuthResponseApi().login(username, password, isConnected);
    } on PlatformException {
      debugPrint('AuthResponseApi call failed');
    } catch (e) {
      debugPrint(e.toString());
    }
    return authResponse;
  }

  @override
  Future<PacketAuth> packetAuthentication(
      String username, String password) async {
    late PacketAuth packetAuth;
    try {
      packetAuth =
          await PacketAuthApi().authenticate(username, password);
    } on PlatformException {
      debugPrint('PacketAuthenticationApi call failed!');
    } catch (e) {
      debugPrint(e.toString());
    }

    return packetAuth;
  }
}

AuthService getAuthServiceImpl() => AuthServiceImpl();
