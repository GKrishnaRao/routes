
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/first_cubit.dart';
import 'package:generated_routes/cubits/second_cubit.dart';
import 'package:generated_routes/cubits/third_cubit.dart';
import 'package:generated_routes/screens/first_screen.dart';
import 'package:generated_routes/screens/second_screen.dart';
import 'package:generated_routes/screens/third_screen.dart';

class Routes{

  static Route? onGeneratedRoute(RouteSettings settings) {
    switch(settings.name) {

      case "/first":
        return MaterialPageRoute(
        builder: (context) => BlocProvider(
            create: (context) => FirstCubit(),
          child: FirstScreen(),
        )
      );

      case "/second":
        Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => SecondCubit(),
              child: SecondScreen(title: arguments["title"]),
            )
        );

      case "/third":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ThirdCubit(),
              child: ThirdScreen(),
            )
        );

    }
  }
}