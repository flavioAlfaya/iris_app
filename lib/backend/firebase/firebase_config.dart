import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB6ai2qLTJ0RgUkM3HDc_HLHh4f9edyAq8",
            authDomain: "icervicais2.firebaseapp.com",
            projectId: "icervicais2",
            storageBucket: "icervicais2.appspot.com",
            messagingSenderId: "783432723901",
            appId: "1:783432723901:web:b0f100967df7dc0615f6d4"));
  } else {
    await Firebase.initializeApp();
  }
}
