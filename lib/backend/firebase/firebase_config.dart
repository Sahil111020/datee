import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDx9vP79lHMeTh26nw9q_mCmSSOFqkQ99Y",
            authDomain: "datee-oy5hai.firebaseapp.com",
            projectId: "datee-oy5hai",
            storageBucket: "datee-oy5hai.appspot.com",
            messagingSenderId: "697277567251",
            appId: "1:697277567251:web:572b4a13265276195c4ae6"));
  } else {
    await Firebase.initializeApp();
  }
}
