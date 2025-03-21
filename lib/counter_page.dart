import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class CounterPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Counter')),
      body:BlocBuilder<CounterCubit, int>(
        builder: (context,count)=> Center(child:Text("$count")),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed:()=> context.read<CounterCubit>().increment(),
          child: const Icon(Icons.add),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            onPressed:()=> context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),),
        ],
      )
    );
  }
    
}