// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/backend/schema/structs/index.dart';

import 'package:supabase/supabase.dart';

Future<bool> updateSupabasePassword(String newPassword) async {
  // Add your function code here!
  final response = await SupaFlow.client.auth
      .updateUser(UserAttributes(password: newPassword));

  if (response.user != null) {
    return true;
  } else {
    return false;
  }
}
