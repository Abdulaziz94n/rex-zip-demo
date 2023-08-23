import 'package:rex_zip/core/exceptions/app_exceptions.dart';

extension BoolX on bool {
  bool fromInt(int val) {
    return switch (val) {
      1 => true,
      0 => false,
      _ => throw CustomException(message: 'Invalid Int to Bool val')
    };
  }
}
