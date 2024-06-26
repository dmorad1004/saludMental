import "package:supabase_flutter/supabase_flutter.dart" hide Provider;

export "database/database.dart";
// export "storage/storage.dart";

const _kSupabaseUrl = "https://qutusmetgkdrttcoevld.supabase.co";
const _kSupabaseAnonKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF1dHVzbWV0Z2tkcnR0Y29ldmxkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgzODQwOTAsImV4cCI6MjAyMzk2MDA5MH0.vVpgZdl_JaASpiHA2HiYtJJ4seV-F820DXU8-gZlhvo";

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
