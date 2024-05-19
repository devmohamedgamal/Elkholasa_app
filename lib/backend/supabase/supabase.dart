import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://yzeorukvebwcdyfkjpza.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl6ZW9ydWt2ZWJ3Y2R5ZmtqcHphIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ2NDA3NzAsImV4cCI6MjAzMDIxNjc3MH0.yO6olP46RNRT8QtmrtpDuC5e1cyc2nFZp-U0t9ugEJY';

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
