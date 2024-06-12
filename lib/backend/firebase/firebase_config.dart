import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAtlwSd9oLVOYE_OHXV6bdRlFG1LS9Kjl8",
            authDomain: "lastdon-app-89d0b.firebaseapp.com",
            projectId: "lastdon-app-89d0b",
            storageBucket: "lastdon-app-89d0b.appspot.com",
            messagingSenderId: "125566717196",
            appId: "1:125566717196:web:6c6a35fc130a2afa2b8d29",
            measurementId: "G-WSTMH5P4EN"));
  } else {
    await Firebase.initializeApp();
  }
}
