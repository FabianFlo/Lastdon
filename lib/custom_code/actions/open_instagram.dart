// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

// Define tu función para abrir el perfil de Instagram

Future<void> openInstagram(BuildContext context) async {
  String username =
      'transportes_lastdon'; // Reemplaza 'tunombredeusuario' con tu nombre de usuario de Instagram
  String url = 'https://www.instagram.com/$username';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir Instagram.';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
