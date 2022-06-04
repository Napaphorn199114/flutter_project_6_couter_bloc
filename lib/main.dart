import 'package:couter_bloc/src/app_route.dart';
import 'package:couter_bloc/src/pages/bloc/counter_a_bloc/bloc/counter_a_bloc.dart';
import 'package:couter_bloc/src/pages/bloc/app_bloc_observer.dart';
import 'package:couter_bloc/src/pages/bloc/counter_b_bloc/bloc/counter_b_bloc.dart';
import 'package:couter_bloc/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  //runApp(const MyApp());
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counterABloc = BlocProvider<CounterABloc>(create: (context)=>CounterABloc());
    final counterBBloc = BlocProvider<CounterBBloc>(create: (context)=>CounterBBloc());

    return MultiBlocProvider(  // bloc อาจจะมีหลายตัวเลยใช้เป็น MultiBloc
      providers: [counterABloc , counterBBloc], // แมพหน้า
      child: MaterialApp(
        title: 'Flutter Demo',
        routes: AppRoute().getAll,  //การแมพหน้า
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'HomePage'),
      ),
    );
  }
}
