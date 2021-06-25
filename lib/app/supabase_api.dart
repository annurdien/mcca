import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
String? SUPABASE_URL = env['SUPABASE_URL'];
String? SUPABASE_SECRET = env['SUPABASE_SECRET'];

// use your own SUPABASE_SECRET key
final SupabaseClient supabase = SupabaseClient(SUPABASE_URL!, SUPABASE_SECRET!);