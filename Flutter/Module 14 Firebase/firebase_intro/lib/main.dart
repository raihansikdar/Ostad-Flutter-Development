import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_intro/live_class_1/stream_builder_home_page.dart';
import 'package:firebase_intro/live_class_2/firebase_notification_handler.dart';
import 'package:flutter/material.dart';

/// Let's an App that will show our basketball live score

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseNotificationHandler().initialization();
  FirebaseNotificationHandler().onTokenRefresh();
  await FirebaseNotificationHandler().getToken();
  await FirebaseNotificationHandler().subscribeToTopic('ostad');
  runApp(const BasketBallLiveScoreApp());
}

class BasketBallLiveScoreApp extends StatelessWidget {
  const BasketBallLiveScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StreamBuilderHomePage(),
    );
  }
}
