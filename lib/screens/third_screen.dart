import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/first_cubit.dart';
import 'package:generated_routes/cubits/second_cubit.dart';
import 'package:generated_routes/cubits/third_cubit.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Third Screen'),
      ),
      body: SafeArea(
        child: Center(

          child: BlocBuilder<ThirdCubit, int>(
            builder: (context, state) {
              return Text(state.toString(),
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                ),);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          BlocProvider.of<ThirdCubit>(context).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
