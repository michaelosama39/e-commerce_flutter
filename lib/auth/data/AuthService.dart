import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth;
  AuthService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String?> SignIn(String email , String password) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return 'Signed in';
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future<String?> SignUp(String email , String password) async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return 'Signed up';
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future<String?> SendPassword(String email) async{
    try{
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return 'Send Password';
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future<String?> ConfirmPassword(String code , String newPassword) async{
    try{
      await _firebaseAuth.confirmPasswordReset(code: code, newPassword: newPassword,);
      return 'Confirm Password';
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }
}