import 'package:supabase/supabase.dart';

const String SUPABASE_URL = 'https://hqtlidhkyxtztlthydry.supabase.co';

const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhxdGxpZGhreXh0enRsdGh5ZHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTcxOTIzODAsImV4cCI6MTk3Mjc2ODM4MH0.KFAZ6XaD0VaHnP0_quhuaFUNCbryIfrIt1Ctuz6WpDs';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);