import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = "https://lkiwatchdbrmgdfgonmw.supabase.co";
const String SUPABASE_SECRET =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjI0NTI3NTQ4LCJleHAiOjE5NDAxMDM1NDh9.7fU1TobsP5kToMdFRJFv2dRAs8H_fG688EPLWBvl4Rc";

// use your own SUPABASE_SECRET key
final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
