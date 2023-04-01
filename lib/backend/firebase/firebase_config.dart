import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkQrHmIEz8hti4tJOL8he0ritc_PshBQE",
            authDomain: "carekit-4ab33.firebaseapp.com",
            projectId: "carekit-4ab33",
            storageBucket: "carekit-4ab33.appspot.com",
            messagingSenderId: "78912377941",
            appId: "1:78912377941:web:86f82ad61ff738bb64b0dc",
            measurementId: "G-YZ0GYC7QJV"));
  } else {
    await Firebase.initializeApp();
  }
}
