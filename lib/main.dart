import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_withapi/cubit/cubit.dart';
import 'package:todo_app_withapi/modules/ToDoSreen/HomePageScreen.dart';
import 'package:todo_app_withapi/network/bloc_obsercer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>TodoCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(

          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
