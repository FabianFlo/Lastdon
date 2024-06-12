// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart'; // Importa url_launcher para abrir enlaces externos

// Define tu función personalizada para abrir WhatsApp
Future<void> openWhatsAppChat(BuildContext context) async {
  String phoneNumber = '+56977022449'; // El número de WhatsApp
  String url = 'https://wa.me/$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir WhatsApp.';
  }
}

// Aquí puedes llamar a esta función donde la necesites
// Por ejemplo, en un onPressed de un botón
// openWhatsAppChat(context)
