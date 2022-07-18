import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FCM {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  static const String recipeTopic = "recipe_topic";

  void init() async {
    await messaging.subscribeToTopic(recipeTopic);
    messaging.onTokenRefresh.listen((event) {
      log("Token Refreshed : $event");
    });
    messaging.getToken().then((value) => log("Token : $value"));
  }

}