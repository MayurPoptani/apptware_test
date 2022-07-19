import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FCM {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  static const String recipeTopic = "recipeTopic";

  void init() async {
    log("Subscribing to Topic : $recipeTopic");
    await messaging.subscribeToTopic(recipeTopic);
    messaging.onTokenRefresh.listen((event) {
      log("Token Refreshed : $event");
    });
    messaging.getToken().then((value) => log("Token : $value"));
  }

}