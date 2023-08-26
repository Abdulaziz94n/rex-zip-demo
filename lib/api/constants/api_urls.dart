import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApiConstants {
  static String clientUserName = '120.10.G072';
  static String clientPassword = '5515';
  static String represUserName = 'admin';
  static String represPassword = '5515';
}

class ApiUrls {
  static const baseUrl = 'http://45.136.107.91:8080/RexSiparisPanel/';
  static const userLogin = 'KullaniciLoginServlet';
  static const clientList = 'CariListServlet';
  static const orderColors = 'OrderRenkServlet';

  static const groupSelection = 'GrupSecimiServlet';
  static const zipperKind = 'FermuarTuruServlet';
  static const zipperGroup = 'FermuarGrubuServlet';
  static const zipperType = 'FermuarTipiServlet';
  static const zipperCode = 'FermuarKoduServlet';
  static const zipperSeparator = 'DipliSepareServlet';
  static const subStopBox = 'AltStopKutuPimServlet';
  static const outterType = 'DisTipiServlet';

  static const cursorType = 'KursorTuruServlet';
  static const cursor = 'KursorServlet';
  static const cursorOverlayGroup = 'KursorKaplamaGrubuServlet';
  static const cursorOverlayColor = 'KursorKaplamaRengiServlet';
  static const subCursorType = 'AltKursorTuruServlet';
  static const subCursor = 'AltKursorServlet';
  static const subCursorOverlayGroup = 'AltKursorKaplamaGrubuServlet';
  static const subCursorOverlayColor = 'AltKursorKaplamaRengiServlet';

  static const handGripGroup = 'ElcikGrubuServlet';
  static const handGrip = 'ElcikServlet';
  static const handGripOverlayGroup = 'ElcikKaplamaGrubuServlet';
  static const handGripOverlayColor = 'ElcikKaplamaRengiServlet';
  static const subHandGripGroup = 'AltElcikGrubuServlet';
  static const subHandGrip = 'AltElcikServlet';
  static const subHandGripOverlayGroup = 'AltElcikKaplamaGrubuServlet';
  static const subHandGripOverlayColor = 'AltElcikKaplamaRengiServlet';

  static const topStopSelection = 'UstStopServlet';
  static const bottomStopBoxPimTopOverlayColor = 'StopKaplamaServlet';

  static const productionStatus = 'OrderImalatDetayServlet';

  static const orders = 'OrderServlet';
  static const ordersDraft = 'OrderTaslakServlet';
  static const orderDetails = 'OrderDetayServlet';
  static const orderDetailsDraft = 'OrderDetayTaslakServlet';
  static const orderDeliveryPdf = 'OrderSevkNoPdfAdresServlet';

  static const changeUserEmail = 'KullaniciMailDegistirServlet';
  static const changeUserPassword = 'KullaniciSifreDegistirServlet';
}

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: ApiUrls.baseUrl,
  ));
  return dio;
});
