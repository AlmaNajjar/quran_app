// import 'package:flutter/material.dart';
// import 'core/theme.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
//
// void main() {
//   runApp(const QuranGamifiedApp());
// }
//
// class QuranGamifiedApp extends StatelessWidget {
//   const QuranGamifiedApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'تحدي الحفظ',
//
//         locale: const Locale('ar'),
//         supportedLocales: const [
//           Locale('ar'), // Arabic
//           Locale('en'), // keep English if you want fallback later
//         ],
//         localizationsDelegates: const [
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate,
//         ],
//         // optional: make sure Arabic is chosen when available
//         localeResolutionCallback: (locale, supportedLocales) {
//           if (locale == null) return const Locale('ar');
//           for (var supported in supportedLocales) {
//             if (supported.languageCode == locale.languageCode) return supported;
//           }
//           return const Locale('ar');
//         },
//       home: Scaffold(
//         backgroundColor: Color(0xFFFDF6E3),
//         body: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFFA8C3EF),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFFEFF4F4),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFF7D96C5),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFFF7BF29),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFFFDF6E3),
//             ),
//             Text('حسنا',
//               style: TextStyle(
//                 color: Color(0xFFFFD166),
//                 fontSize: 100,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.white,
//             ),
//
//             Container(
//               height: 100,
//               width: 100,
//               color: Color(0xFFF8F8F8),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import 'core/providers/goal_provider.dart';
import 'features/splash/presentation/pages/splash_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GoalProvider()),
      ],
      child: MaterialApp(
        title: 'تطبيق القرآن',
        locale: const Locale('ar'),
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home:  SplashView(),
      ),
    );
  }
}

