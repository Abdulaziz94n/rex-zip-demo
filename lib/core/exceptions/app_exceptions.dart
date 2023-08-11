import '../../core/firebase/firebase_constants.dart';

sealed class AppException implements Exception {
  AppException({required this.message});
  final String message;

  @override
  String toString() => 'AppException(message: $message)';
}

class ConnectionException extends AppException {
  ConnectionException() : super(message: 'Connection Exception');
}

class ServerException extends AppException {
  ServerException() : super(message: 'Server Exception');
}

class RequestException extends AppException {
  RequestException() : super(message: 'Request Exception');
}

class UnExpectedException extends AppException {
  UnExpectedException() : super(message: 'unexpected error');
}

class CustomException extends AppException {
  CustomException({required super.message});
}

class AuthException extends AppException {
  AuthException(this.code)
      : super(
          message: AuthException.mapFireAuthErrors(code),
        );

  final String code;
  static String mapFireAuthErrors(String code) {
    switch (code) {
      case FireAuthErrorCodes.emailAlreadyInUseCode:
        return 'email already in use';
      case FireAuthErrorCodes.invalidEmailCode:
        return 'invalid email';
      case FireAuthErrorCodes.userNotFoundCode:
        return 'user not found';
      case FireAuthErrorCodes.loginWrongPasswordCode:
        return 'login wrong password error';
      case FireAuthErrorCodes.weakPassword:
        return 'weak password';
      case FireAuthErrorCodes.invalidVerificationCode:
        return 'invalid verification Code';
      case FireAuthErrorCodes.tooManyRequestsCode:
        return 'too many requests';
      case FireAuthErrorCodes.requiresRecentLoginCode:
        return 'requires recent login';
      case FireAuthErrorCodes.networkRequestFailed:
        return 'connection Error';
      default:
        // TODO
        return 'Unkown Error';
    }
  }
}
