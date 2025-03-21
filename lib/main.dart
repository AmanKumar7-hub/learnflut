import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnflut/counter_cubit.dart';

import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BlocProvider(
        create: (_)=>CounterCubit(),
        child: CounterPage(),
      )
    );
  }
}
