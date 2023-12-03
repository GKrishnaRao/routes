import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/first_cubit.dart';
import 'package:generated_routes/cubits/second_cubit.dart';
import 'package:generated_routes/cubits/third_cubit.dart';
import 'package:generated_routes/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  final String title;
  const SecondScreen({super.key, required this.title});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(widget.title),
        actions: [
          IconButton(onPressed: (){

            /*Navigator.push(context, MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ThirdCubit(),
                  child: ThirdScreen(),
                )
              )
            );*/

            Navigator.pushNamed(context, "/third");

          }, icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      body: SafeArea(
        child: Center(

          child: BlocBuilder<SecondCubit, int>(
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
          BlocProvider.of<SecondCubit>(context).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
