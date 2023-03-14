import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyApD96cCFv95k7GQc3Xj12tc_b090mKg_w",
            authDomain: "corpscatchfirebase.firebaseapp.com",
            projectId: "corpscatchfirebase",
            storageBucket: "corpscatchfirebase.appspot.com",
            messagingSenderId: "31833848502",
            appId: "1:31833848502:web:6b64713ee4c636529d8417",
            measurementId: "G-HJ6DSRR388"));
  } else {
    await Firebase.initializeApp();
  }
}
