// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   const AndroidInitializationSettings initializationSettingsAndroid =
//   AndroidInitializationSettings('@mipmap/ic_launcher');
//
//   const InitializationSettings initializationSettings =
//   InitializationSettings(android: initializationSettingsAndroid);
//
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//
//   // 🟢 طلب إذن الإشعارات (ضروري على Android 13+)
//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//       AndroidFlutterLocalNotificationsPlugin>()
//       ?.requestNotificationsPermission();
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Local Notification Test')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             const AndroidNotificationDetails androidDetails =
//             AndroidNotificationDetails(
//               'main_channel',
//               'Main Notifications',
//               channelDescription: 'This is the main channel',
//               importance: Importance.max,
//               priority: Priority.high,
//               playSound: true,
//             );
//
//             const NotificationDetails notificationDetails =
//             NotificationDetails(android: androidDetails);
//
//             await flutterLocalNotificationsPlugin.show(
//               0,
//               'مرحباً!',
//               '🎉 هذا إشعار محلي تجريبي ناجح!',
//               notificationDetails,
//             );
//           },
//           child: const Text('إرسال إشعار'),
//         ),
//       ),
//     );
//   }
// }
