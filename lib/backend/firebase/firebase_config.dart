import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD1UEZr9Kvo5qxr6LbCLfrP3j0_a4DPMCs",
            authDomain: "clusterapp-38332.firebaseapp.com",
            projectId: "clusterapp-38332",
            storageBucket: "clusterapp-38332.appspot.com",
            messagingSenderId: "177819116489",
            appId: "1:177819116489:web:f2e03b0df80a599749fe18",
            measurementId: "G-PB4JGWJ69G"));
  } else {
    await Firebase.initializeApp();
  }
}
