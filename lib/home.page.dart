import 'package:bloc_project2/bloc/counter_bloc.dart';
import 'package:bloc_project2/counter_function_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<CounterBloc, int>(builder: (context, counter) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward_rounded),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CounterFunctionPage()));
          }),
    );
  }
}
