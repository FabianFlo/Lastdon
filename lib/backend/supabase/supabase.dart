import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://akayinkqseobtpvbhfej.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFrYXlpbmtxc2VvYnRwdmJoZmVqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA4MDU4ODEsImV4cCI6MjAyNjM4MTg4MX0.CMawcDYvVucR72gj3XXKzyCpxOJtL9I8LSy4Q7F1ak4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
