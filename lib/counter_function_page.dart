import 'package:bloc_project2/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterFunctionPage extends StatefulWidget {
  const CounterFunctionPage({super.key});

  @override
  State<CounterFunctionPage> createState() => _CounterFunctionPageState();
}

class _CounterFunctionPageState extends State<CounterFunctionPage> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 176, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 163, 176, 186),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                counterBloc.add(CounterIncremented());
              }),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
              child: const Icon(Icons.minimize),
              onPressed: () {
                counterBloc.add(CounterDecremented());
              })
        ],
      ),
    );
  }
}
