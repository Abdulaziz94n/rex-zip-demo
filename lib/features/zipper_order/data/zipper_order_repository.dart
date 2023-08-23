import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/api/requests/zipper_requests_params.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/utils/dio_utils.dart';
import 'package:rex_zip/features/auth/application/auth_service.dart';
import 'package:rex_zip/features/order_type/domain/order_type.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_model.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_controller.dart';

class ZipperOrderRepository {
  ZipperOrderRepository(
    this._dio,
  );
  final Dio _dio;

  Future<Response> test() async {
    final dio = Dio();
    try {
      final res = await _dio.post(ApiUrls.orderColors, data: {
        'token':
            'eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2OTI2MTEyOTN9.egxfoGJLSqusrBAqYoOhO__Z__ZXfHlDigp9C3Kw-9I'
      });
      print(res);
      // final res =
      //     await dio.get('https://jsonplaceholder.typicode.com/todos/55');
      return res;
    } on DioException catch (e) {
      return DioUtils.handleResponseException(e);
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu tekrar deneyin');
    }
  }

  Future<List<ZipperKind>> fetchZipperKinds({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(ApiUrls.zipperKind,
          data: ZipperApiRequests.kindParams(
            token: token,
            orderType: OrderType.zipper,
            clientCode: clientCode,
          ));
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperKindData =
          jsonList.map((e) => ZipperKind.fromMap(e)).toList();
      return zipperKindData;
      // TODO: delete return DummyData.zipperKindsList;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperGroup>> fetchZipperGroups({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(ApiUrls.zipperGroup,
          data: ZipperApiRequests.groupParams(
            clientCode: clientCode,
            orderType: OrderType.zipper,
            subGroup: order.zipperKind,
            token: token,
          ));
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperGroupData =
          jsonList.map((e) => ZipperGroup.fromMap(e)).toList();
      return zipperGroupData;
    } catch (e) {
      print(e);
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperType>> fetchZipperTypes({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.zipperType,
        data: ZipperApiRequests.typeParams(
          token: token,
          orderType: OrderType.zipper,
          clientCode: clientCode,
          subGroup: order.zipperKind,
          otherGroup: order.zipperGroup,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperTypeData =
          jsonList.map((e) => ZipperType.fromMap(e)).toList();
      return zipperTypeData;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperCode>> fetchZipperCodes({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.zipperCode,
        data: ZipperApiRequests.codeParams(
          token: token,
          orderType: OrderType.zipper,
          clientCode: clientCode,
          subGroup: order.zipperKind,
          otherGroup: order.zipperGroup,
          detailsGroup: order.zipperType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperCodeData =
          jsonList.map((e) => ZipperCode.fromMap(e)).toList();
      return zipperCodeData;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSeparator>> fetchZipperSeparator({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.zipperSeparator,
        data: ZipperApiRequests.separatorParams(
            token: token, clientCode: clientCode, zipperCode: order.zipperCode),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSeparatorData =
          jsonList.map((e) => ZipperSeparator.fromMap(e)).toList();
      return zipperSeparatorData;
    } catch (e) {
      print(e);
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubStopBox>> fetchZipperSubStopBox({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subStopBox,
        data: ZipperApiRequests.subStopBoxParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
          separatorDip: order.zipperSeparator,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubStopBoxData =
          jsonList.map((e) => ZipperSubStopBox.fromMap(e)).toList();
      return zipperSubStopBoxData;
    } catch (e) {
      print(e);

      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperOutterType>> fetchZipperOutterType({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      print(
        ZipperApiRequests.outterTypeParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
        ),
      );
      final response = await _dio.post(
        ApiUrls.outterType,
        data: ZipperApiRequests.outterTypeParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperOutterType =
          jsonList.map((e) => ZipperOutterType.fromMap(e)).toList();
      return zipperOutterType;
    } catch (e) {
      print(e);
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperCursorType>> fetchZipperCursorType({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.cursorType,
        data: ZipperApiRequests.cursorTypeParams(
          token: token,
          clientCode: clientCode,
          zipperCode: order.zipperCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperCursorType =
          jsonList.map((e) => ZipperCursorType.fromMap(e)).toList();
      return zipperCursorType;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperCursor>> fetchZipperCursor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.cursor,
        data: ZipperApiRequests.cursorParams(
            token: token,
            clientCode: clientCode,
            zipperCode: order.zipperCode,
            cursorDetailsGroup: order.zipperCursorType),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperCursor =
          jsonList.map((e) => ZipperCursor.fromMap(e)).toList();
      return zipperCursor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperCursorOverlayGroup>> fetchZipperCursorOverlayGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.cursorOverlayGroup,
        data: ZipperApiRequests.cursorOverlayGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperCursorOverlayGroup =
          jsonList.map((e) => ZipperCursorOverlayGroup.fromMap(e)).toList();
      return zipperCursorOverlayGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperCursorOverlayColor>> fetchZipperCursorOverlayColor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.cursorOverlayColor,
        data: ZipperApiRequests.cursorOverlayColorsParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperCursorOverlayColor =
          jsonList.map((e) => ZipperCursorOverlayColor.fromMap(e)).toList();
      return zipperCursorOverlayColor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubCursorType>> fetchZipperSubCursorType({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subCursorType,
        data: ZipperApiRequests.subCursorTypeParams(
          token: token,
          clientCode: clientCode,
          zipperCode: order.zipperCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubCursorType =
          jsonList.map((e) => ZipperSubCursorType.fromMap(e)).toList();
      return zipperSubCursorType;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubCursor>> fetchZipperSubCursor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subCursor,
        data: ZipperApiRequests.subCursorParams(
          token: token,
          clientCode: clientCode,
          zipperCode: order.zipperCode,
          cursorDetailsGroup: order.zipperCursorType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubCursor =
          jsonList.map((e) => ZipperSubCursor.fromMap(e)).toList();
      return zipperSubCursor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubCursorOverlayGroup>> fetchZipperSubCursorOverlayGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subCursorOverlayGroup,
        data: ZipperApiRequests.subCursorOverlayGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubCursorOverlayGroup =
          jsonList.map((e) => ZipperSubCursorOverlayGroup.fromMap(e)).toList();
      return zipperSubCursorOverlayGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubCursorOverlayColor>> fetchZipperSubCursorOverlayColor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subCursorOverlayColor,
        data: ZipperApiRequests.subCursorOverlayColorParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubCursorOverlayColor =
          jsonList.map((e) => ZipperSubCursorOverlayColor.fromMap(e)).toList();
      return zipperSubCursorOverlayColor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperHandgripGroup>> fetchZipperHandgripGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.handGripGroup,
        data: ZipperApiRequests.handgripGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperHandgripGroup =
          jsonList.map((e) => ZipperHandgripGroup.fromMap(e)).toList();
      return zipperHandgripGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperHandgrip>> fetchZipperHandgrip({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.handGrip,
        data: ZipperApiRequests.handgripParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
          // TODO: add attribute to zipperModel class
          cursorHandgripSize: 'orta_boy',
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperHandgrip =
          jsonList.map((e) => ZipperHandgrip.fromMap(e)).toList();
      return zipperHandgrip;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperHandgripOverlayGroup>> fetchZipperHandgripOverlayGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.handGripOverlayGroup,
        data: ZipperApiRequests.handgripOverlayGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperHandgripOverlayGroup =
          jsonList.map((e) => ZipperHandgripOverlayGroup.fromMap(e)).toList();
      return zipperHandgripOverlayGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperHandgripOverlayColor>> fetchZipperHandgripOverlayColor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.handGripOverlayColor,
        data: ZipperApiRequests.subCursorOverlayColorParams(
            token: token,
            clientCode: clientCode,
            detailsGroup: order.zipperType),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperHandgripOverlayColor =
          jsonList.map((e) => ZipperHandgripOverlayColor.fromMap(e)).toList();
      return zipperHandgripOverlayColor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubHandgripGroup>> fetchZipperSubHandgripGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subHandGripGroup,
        data: ZipperApiRequests.subHandgripOverlayGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubHandgripGroup =
          jsonList.map((e) => ZipperSubHandgripGroup.fromMap(e)).toList();
      return zipperSubHandgripGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubHandgrip>> fetchZipperSubHandgrip({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subHandGrip,
        data: ZipperApiRequests.handgripParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
          // TODO: ADD TO MODEL
          cursorHandgripSize: 'orta_boy',
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubHandgrip =
          jsonList.map((e) => ZipperSubHandgrip.fromMap(e)).toList();
      return zipperSubHandgrip;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubHandgripOverlayGroup>>
      fetchZipperSubHandgripOverlayGroup({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subCursorOverlayGroup,
        data: ZipperApiRequests.handgripOverlayGroupParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubHandgripOverlayGroup = jsonList
          .map((e) => ZipperSubHandgripOverlayGroup.fromMap(e))
          .toList();
      return zipperSubHandgripOverlayGroup;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperSubHandgripOverlayColor>>
      fetchZipperSubHandgripOverlayColor({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.subHandGripOverlayColor,
        data: ZipperApiRequests.subCursorOverlayColorParams(
          token: token,
          clientCode: clientCode,
          detailsGroup: order.zipperType,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperSubHandgripOverlayColor = jsonList
          .map((e) => ZipperSubHandgripOverlayColor.fromMap(e))
          .toList();
      return zipperSubHandgripOverlayColor;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperTopStop>> fetchZipperTopStop({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.topStopSelection,
        data: ZipperApiRequests.topStopParams(
            token: token,
            clientCode: clientCode,
            detailsGroup: order.zipperType),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperTopStop =
          jsonList.map((e) => ZipperTopStop.fromMap(e)).toList();
      return zipperTopStop;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperStopOverlay>> fetchZipperStopOverlay({
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiUrls.bottomStopBoxPimTopOverlayColor,
        data: ZipperApiRequests.stopOverlayParams(
          token: token,
          clientCode: clientCode,
        ),
      );
      final jsonList = (response.data['data'] as List<dynamic>);
      final zipperStopOverlay =
          jsonList.map((e) => ZipperStopOverlay.fromMap(e)).toList();
      return zipperStopOverlay;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperData>> fetchStepData({
    required SubSteps subStep,
    required ZipperModel order,
    required String token,
    required String clientCode,
  }) async {
    return switch (subStep) {
      SubSteps.zipperKind => await fetchZipperKinds(
          order: order,
          token: token,
          clientCode: clientCode,
        ),
      SubSteps.zipperGroup => await fetchZipperGroups(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.zipperType => await fetchZipperTypes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.zipperCode => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.seperator => await fetchZipperSeparator(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.bottomStopBox => await fetchZipperSubStopBox(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.outterType => await fetchZipperOutterType(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.outterColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.outterLeftColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.outterRightColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.sewingThreadColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.leftSewingThreadColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.rightSewingThreadColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.cursorType => await fetchZipperCursorType(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.cursor => await fetchZipperCursor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.cursorOverlayGroup => await fetchZipperCursorOverlayGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.cursorOverlayColor => await fetchZipperCursorOverlayColor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subCursorType => await fetchZipperSubCursorType(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subCursor => await fetchZipperSubCursor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subCursorOverlayGroup => await fetchZipperSubCursorOverlayGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subCursorOverlayColor => await fetchZipperSubCursorOverlayColor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.handgripGroup => await fetchZipperHandgripGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.handgrips => await fetchZipperHandgrip(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.handgripOverlayGroup => await fetchZipperHandgripGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.handgripOverlayColor => await fetchZipperHandgripOverlayColor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.mineSilmeColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subHandgripGroup => await fetchZipperSubHandgripGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subHandgrips => await fetchZipperSubHandgrip(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subHandgripOverlayGroup =>
        await fetchZipperSubHandgripOverlayGroup(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subHandgripOverlayColor =>
        await fetchZipperSubHandgripOverlayColor(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.subMineSilmeColor => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.topStop => await fetchZipperTopStop(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.topBottomStopConfig => await fetchZipperStopOverlay(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.colorLengthCount => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
      SubSteps.details => await fetchZipperCodes(
          clientCode: clientCode,
          order: order,
          token: token,
        ),
    };
  }
}

final zipperOrdersRepo = Provider<ZipperOrderRepository>((ref) {
  return ZipperOrderRepository(ref.watch(dioProvider));
});

final stepItemsFuture =
    FutureProvider.family<List<ZipperData>, SubSteps>((ref, subStep) async {
  final order = ref.watch(zipperOrderController);
  final token = ref.watch(userProvider)!.value!.getToken;
  final clientCode = ref.watch(userProvider)!.value!.getClientCode;
  final res = ref.watch(zipperOrdersRepo).fetchStepData(
      token: token, subStep: subStep, order: order, clientCode: clientCode);
  return res;
});
