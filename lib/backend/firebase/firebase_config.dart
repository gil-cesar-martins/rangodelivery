import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAT6JLXgpCLr8lIoKvrDNU2u9azad5VwFk",
            authDomain: "rangodelivery-85dfc.firebaseapp.com",
            projectId: "rangodelivery-85dfc",
            storageBucket: "rangodelivery-85dfc.appspot.com",
            messagingSenderId: "876654773299",
            appId: "1:876654773299:web:84199e75c596dea8c1cf46"));
  } else {
    await Firebase.initializeApp();
  }
}
