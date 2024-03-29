import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationHandler {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialization() async {
    await firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print("This is from onMessage");
    //   log(message.data.toString());
    //   print(message.notification?.body ?? 'Empty body');
    //   print(message.notification?.title ?? 'Empty title');
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print("This is from onMessageOpenedApp");
    //   log(message.data.toString());
    //   print(message.notification?.body ?? 'Empty body');
    //   print(message.notification?.title ?? 'Empty title');
    // });
     

       RemoteMessage? message = await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      messageHandler(message);
    }
     
      /// works on app is background
    FirebaseMessaging.onMessage.listen(messageHandler);
    // When app is in foreground
    FirebaseMessaging.onMessageOpenedApp.listen(messageHandler);
    // kill state
    FirebaseMessaging.onBackgroundMessage(firebaseMessingBackgroundHandler);
  }

  Future<void> messageHandler(RemoteMessage message) async {
    log(message.data.toString());
    print(message.notification?.body ?? 'Empty body');
    print(message.notification?.title ?? 'Empty title');
  }

  Future<String?> getToken() async {
    final String? token = await firebaseMessaging.getToken();
    print(token);
    return token;
  }

  void onTokenRefresh() {
    firebaseMessaging.onTokenRefresh.listen((token) {
      print("Send to api");
    });
  }

  Future<void> subscribeToTopic(String topicName) async {
    await firebaseMessaging.subscribeToTopic(topicName);
  }

  Future<void> unsubscribeToTopic(String topicName) async {
    await firebaseMessaging.unsubscribeFromTopic(topicName);
  }
}


/// top level function - not a method(not related to any class)
Future<void> firebaseMessingBackgroundHandler(RemoteMessage message) async {
  print(message.data);
  print(message.notification?.body ?? 'Empty body');
  print(message.notification?.title ?? 'Empty title');
}