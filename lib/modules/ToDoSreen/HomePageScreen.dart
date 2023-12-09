import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_withapi/cubit/cubit.dart';
import 'package:todo_app_withapi/cubit/states.dart';
import 'package:todo_app_withapi/modules/ToDoSreen/HomePageWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TodoCubit.get(context).getAllTodo();
    return BlocConsumer<TodoCubit,TodoStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state)
      {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'TODO APP',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
              padding: const EdgeInsets.only(top: 10,left: 17,right: 15,bottom: 10),
              child: ListView.separated(
                  itemBuilder: (context,index)
                  {
                    return customHomePage(todo: TodoCubit.get(context).todomodel!, index: index,);
                  },
                  separatorBuilder: (context,index)=> Padding(
                    padding: const EdgeInsets.only(top: 17.0,bottom: 17),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[300],
                    ),
                  ),
                  itemCount: 10)
          ),
        );
      },

    );
  }
}


