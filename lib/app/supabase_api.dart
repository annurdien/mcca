import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = "";
const String SUPABASE_SECRET = "";

// use your own SUPABASE_SECRET key
final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
