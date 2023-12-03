import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/first_cubit.dart';
import 'package:generated_routes/cubits/second_cubit.dart';
import 'package:generated_routes/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First Screen'),
        actions: [
          IconButton(onPressed: (){

            /*Navigator.push(context, MaterialPageRoute(
                builder: (context) => BlocProvider(
                    create: (context) => SecondCubit(),
                  child: SecondScreen(),
                )
              )
            );*/

            Navigator.pushNamed(context, "/second", arguments: {
              "title" : "Dynamic title",
            });

          }, icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      body: SafeArea(
        child: Center(

          child: BlocBuilder<FirstCubit, int>(
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
          BlocProvider.of<FirstCubit>(context).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
