import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyChLpRqEj3eJgEeuF5nulZtS9ixcdeBzA0",
            authDomain: "gatepass-380112.firebaseapp.com",
            projectId: "gatepass-380112",
            storageBucket: "gatepass-380112.appspot.com",
            messagingSenderId: "800428311109",
            appId: "1:800428311109:web:74602dd50cb3adc5c8d92c",
            measurementId: "G-SWSXX8Y876"));
  } else {
    await Firebase.initializeApp();
  }
}
