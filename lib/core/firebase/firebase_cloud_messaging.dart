// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';


// Future<void> _onNotificationOpenApp(RemoteMessage? message) async {
//   if (message == null) return;
//   print(message.notification?.body);
//   // Handle Action on Notification Tap
// }

// Future<void> _onBackgroundNotification(RemoteMessage message) async {
//   await LocalNotificationsApi.showNotification(
//     body: message.notification!.body,
//     title: message.notification!.title,
//     payload: jsonEncode(message.toMap()),
//   );
// }

// Future<void> _onForegroundNotification(RemoteMessage? message) async {
//   if (message == null) return;
//   await LocalNotificationsApi.showNotification(
//     body: message.notification!.body,
//     title: message.notification!.title,
//     payload: jsonEncode(message.toMap()),
//   );
// }

// Future _initPushNotifications() async {
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );

//   FirebaseMessaging.instance.getInitialMessage().then(_onNotificationOpenApp);
//   FirebaseMessaging.onMessageOpenedApp.listen(_onNotificationOpenApp);
//   FirebaseMessaging.onBackgroundMessage(_onBackgroundNotification);
//   FirebaseMessaging.onMessage.listen(_onForegroundNotification);
// }

// class FcmService {
//   final _fcmKey = 'Your SERVER KEY';

//   final _dio = Dio();
//   final _fcm = FirebaseMessaging.instance;
//   final _fcmUrl = 'https://fcm.googleapis.com/fcm/send';

  // Future<void> initNotification() async {
  //   await _fcm.requestPermission();
  //   final deviceToken = await getToken();
  //   print(deviceToken);
  //   // Save token in your database
  //   _initPushNotifications();
  //   LocalNotificationsApi.init();
  // }

//   Future<String?> getToken() async {
//     try {
//       final token = await _fcm.getToken();
//       return token;
//     } catch (e) {
//       // TODO
//       return null;
//     }
//   }

//   sendNotificationToDevice(String token) {
//     try {
//       _dio.post(
//         _fcmUrl,
//         options: Options(
//           headers: {
//             'Content-Type': 'application/json',
//             'Authorization': 'key=$_fcmKey'
//           },
//         ),
//         data: json.encode(
//           {
//             "notification": {
//               "title": 'title goes here',
//               "body": 'body goes here',
//             },
//             "priority": 'high',
//             "to": _htcDevice

//             //   "topics/topicName"
//           },
//         ),
//       );
//     } on DioError catch (e) {
//       print('Dio Error $e');
//     } catch (e) {
//       print('Catch Blog Triggered $e');
//     }
//   }

//   sendNotificationToTopic(String topic) {
//     try {
//       _dio.post(
//         _fcmUrl,
//         options: Options(
//           headers: {
//             'Content-Type': 'application/json',
//             'Authorization': 'key=$_fcmKey'
//           },
//         ),
//         data: json.encode(
//           {
//             "notification": {
//               "title": 'title goes here',
//               "body": 'body goes here',
//             },
//             "priority": 'high',
//             "to": "/topics/$topic"
//           },
//         ),
//       );
//     } on DioError catch (e) {
//       print('Dio Error $e');
//     } catch (e) {
//       print('Catch Blog Triggered $e');
//     }
//   }

//   Future<void> subscribeToTopic(String topic) async {
//     try {
//       await _fcm.subscribeToTopic(topic);
//     } catch (e) {
//       // TODO
//     }
//   }

//   Future<void> unsubscribeToTopic(String topic) async {
//     try {
//       await _fcm.unsubscribeFromTopic(topic);
//     } catch (e) {
//       // TODO
//     }
//   }

//   onTapNotificationOpenedApp() {
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {});
//   }

//   onTapNotificationTerminatedApp() async {
//     final message = await _fcm.getInitialMessage();
//     if (message == null) return;
//     // TODO
//   }
// }
