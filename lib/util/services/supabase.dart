import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:weather/util/services/toast.dart';

const String supabaseUrl = "https://hqtlidhkyxtztlthydry.supabase.co";
const String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhxdGxpZGhreXh0enRsdGh5ZHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTcxOTIzODAsImV4cCI6MTk3Mjc2ODM4MH0.KFAZ6XaD0VaHnP0_quhuaFUNCbryIfrIt1Ctuz6WpDs";

class SupabaseManager {
  final client = SupabaseClient(supabaseUrl, token);


  Future<void> signUpUser(context, {String? email, String? password}) async {
    debugPrint("email:$email password:$password");
    final result = await client.auth.signUp(email!, password!);

    debugPrint(result.data!.toJson().toString());

    if (result.data != null) {
      showToastMessage('Registration Success', isError: false);
      Navigator.pushReplacementNamed(context, 'login');
      showToastMessage('Success', isError: false);
    } else if (result.error?.message != null) {
      showToastMessage('Error:${result.error!.message.toString()}',
          isError: true);
    }
  }

  Future<void> signInUser(context, {String? email, String? password}) async {
    debugPrint("email:$email password:$password");
    final result = await client.auth.signIn(email: email!, password: password!);
    debugPrint(result.data!.toJson().toString());

    if (result.data != null) {
      showToastMessage('Login Success', isError: false);
      Navigator.pushReplacementNamed(context, '/home');
      showToastMessage('Success', isError: false);
    } else if (result.error?.message != null) {
      showToastMessage('Error:${result.error!.message.toString()}',
          isError: true);
    }
  }


  Future<void> logout (context)async{
    await client.auth.signOut();
    Navigator.pushReplacementNamed(context, 'login');
  }
}