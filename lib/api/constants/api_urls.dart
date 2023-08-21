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
  static const altStopBox = 'AltStopKutuServlet';
  static const disType = 'DisTipiServlet';

  static const cursorType = 'KursorTuruServlet';
  static const cursor = 'KursorServlet';
  static const cursorOverlayGroup = 'KursorKaplamaGrubuServlet';
  static const cursorOverlayColor = 'KursorKaplamaRengiServlet';

  static const handGripGroup = 'ElcikGrubuServlet';
  static const handGrip = 'ElcikServlet';
  static const handGripOverlayGroup = 'ElcikKaplamaGrubuServlet';
  static const handGripOverlayColor = 'ElcikKaplamaRengiServlet';
  static const bottomHandGripGroup = 'AltElcikGrubuServlet';
  static const bottomHandGrip = 'AltElcikServlet';
  static const bottomHandGripOverlayGroup = 'AltElcikKaplamaGrubuServlet';
  static const bottomHandGripOverlayColor = 'AltElcikKaplamaRengiServlet';

  static const topStopSelection = 'UstStopServlet';
  static const bottomStopBoxPimTopOverlayColor = 'StopKaplamaServlet';

  static const productionStatus = 'OrderImalatDetayServlet';
}

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: ApiUrls.baseUrl));
  return dio;
});
