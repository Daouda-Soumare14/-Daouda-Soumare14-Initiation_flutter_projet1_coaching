/*
  Auth Repository - outlines the possible auth operations for this app. 
*/

import 'package:projet1_review/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmalPassword(String email, String password);
  Future<AppUser?> registerWithEmalPassword(
      String name, String email, String password);

  Future<void> logout();
  Future<AppUser?> getCurrentUser();
}
