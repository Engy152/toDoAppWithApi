
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:todo_app_withapi/cubit/states.dart';
import 'package:todo_app_withapi/models/TodoModel.dart';
import 'package:todo_app_withapi/network/http.dart';

class TodoCubit extends Cubit<TodoStates>
{
  TodoCubit():super(AppInitialStates());
  static TodoCubit get(context) => BlocProvider.of(context);
  TodoModel? todomodel;
 void getAllTodo() async
  {
    emit(AppLoadingStates());
     await Api().get(url: 'https://dummyjson.com/todos').then((value)
      {
        final data = json.decode(value.body);
        print(data);
        if(value.statusCode==200){
          todomodel = TodoModel.fromJson(data);
        emit(AppScseesStates());
        }else
        {
          print('error');
        }
      }).catchError((error) {
        print('error.toString()$error');
        emit(AppErrorStates());
      });
    }
  }