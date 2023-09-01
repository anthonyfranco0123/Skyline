import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'constants.dart';
import 'nav_bar/nav_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://zctehbfxlqdhrxszvrsf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpjdGVoYmZ4bHFkaHJ4c3p2cnNmIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM1MDcxNTgsImV4cCI6MjAwOTA4MzE1OH0.kKrNi7r-OyAiSAObXtSuhyMgox1uWHUmz9ZbLzRUZbk',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _fetchData() async {
    // final data = await supabase.from('my_table').select('column_2').execute();
    final data = await Supabase.instance.client.from('api-keys').select('openai');

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceTopSystemUIOffset = MediaQuery.of(context).padding.top;
    minimumAppBarHeaderHeight = kToolbarHeight + deviceTopSystemUIOffset;
    _fetchData();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarView(),
    );
  }
}