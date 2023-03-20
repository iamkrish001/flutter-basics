import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //1   handleAuthState() , need to create a handleauthstate method

//2   SignInWithGoogle ()

//3   signOut()


// Determine if the user is authenticated
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Homepage();
          } else
            return LoginPage();
        }
        );
  }
// ignore: non_constant_identifier_names

}
