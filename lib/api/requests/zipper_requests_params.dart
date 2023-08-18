import 'package:rex_zip/api/constants/api_keys.dart';
import 'package:rex_zip/features/order_type/domain/order_type.dart';

class ZipperRequests {
  static Map<String, dynamic> kindParams({
    required String token,
    required OrderType orderType,
    required String clientCode,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.orderType: orderType.type,
      ApiKeys.token: token
    };
  }

  static Map<String, dynamic> groupParams({
    required String token,
    required OrderType orderType,
    required String clientCode,
    required String subGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.orderType: orderType.type,
      ApiKeys.token: token,
      ApiKeys.subGroupSnackCase: subGroup,
    };
  }

  static Map<String, dynamic> typeParams({
    required String token,
    required OrderType orderType,
    required String clientCode,
    required String subGroup,
    required String otherGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.orderType: orderType.type,
      ApiKeys.token: token,
      ApiKeys.subGroupSnackCase: subGroup,
      ApiKeys.otherGroupSnackCase: otherGroup,
    };
  }

  static Map<String, dynamic> codeParams({
    required String token,
    required OrderType orderType,
    required String clientCode,
    required String subGroup,
    required String otherGroup,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.orderType: orderType.type,
      ApiKeys.token: token,
      ApiKeys.subGroupSnackCase: subGroup,
      ApiKeys.otherGroupSnackCase: otherGroup,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> separatorParams({
    required String token,
    required String zipperCode,
    required String clientCode,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.zipperCode: zipperCode,
      ApiKeys.token: token,
    };
  }

  static Map<String, dynamic> bottomStopBoxParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
    required String separatorDip,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroup: detailsGroup,
      ApiKeys.separatorDip: separatorDip,
    };
  }

  static Map<String, dynamic> outterTypeParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.token: token,
      ApiKeys.detailsGroup: clientCode,
    };
  }

  static Map<String, dynamic> cursorTypeParams({
    required String token,
    required String clientCode,
    required String zipperCode,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.token: token,
      ApiKeys.zipperCode: zipperCode,
    };
  }

  static Map<String, dynamic> cursorParams({
    required String token,
    required String clientCode,
    required String zipperCode,
    required String cursorDetailsGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.token: token,
      ApiKeys.zipperCode: zipperCode,
      ApiKeys.cursorDetailsGroup: cursorDetailsGroup,
    };
  }

  static Map<String, dynamic> cursorOverlayGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.token: token,
    };
  }

  static Map<String, dynamic> cursorOverlayColorsParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.clientCode: clientCode,
      ApiKeys.token: token,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> subCursorTypeParams({
    required String token,
    required String clientCode,
    required String zipperCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.zipperCode: zipperCode,
    };
  }

  static Map<String, dynamic> subCursorParams({
    required String token,
    required String clientCode,
    required String zipperCode,
    required String cursorDetailsGroup,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.zipperCode: zipperCode,
      ApiKeys.cursorDetailsGroup: cursorDetailsGroup,
    };
  }

  static Map<String, dynamic> subCursorOverlayGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }

  static Map<String, dynamic> subCursorOverlayColorParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> handgripGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }

  static Map<String, dynamic> handgripGParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
    required String cursorHandgripSize,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
      ApiKeys.cursorHandgripSize: cursorHandgripSize,
    };
  }

  static Map<String, dynamic> handgripOverlayGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }

  static Map<String, dynamic> handgripOverlayColorParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> subHandgripGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }

  static Map<String, dynamic> subHandgripParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
    required String cursorHandgripSize,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
      ApiKeys.cursorHandgripSize: cursorHandgripSize,
    };
  }

  static Map<String, dynamic> subHandgripOverlayGroupParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }

  static Map<String, dynamic> subHandgripColorParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> topStopParams({
    required String token,
    required String clientCode,
    required String detailsGroup,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.detailsGroupSnackcase: detailsGroup,
    };
  }

  static Map<String, dynamic> stopOverlayParams({
    required String token,
    required String clientCode,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
    };
  }
}
