import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/routes.dart';
import 'package:generated_routes/screens/first_screen.dart';

import 'cubits/first_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*home: BlocProvider(
        create: (context) => FirstCubit(),
        child: FirstScreen(),
      )*/
      onGenerateRoute: Routes.onGeneratedRoute,
      initialRoute: "/first",
    );
  }
}

