import 'package:flutter/material.dart';
import 'package:todo_app_withapi/models/TodoModel.dart';

class customHomePage extends StatelessWidget {
  const customHomePage({
    super.key,
    required this.todo,
    required this.index,
  });
  final TodoModel todo;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      decoration:
      BoxDecoration(
        // color: Color(0xf3f4CA1DA),
        color: Colors.grey[800],
        borderRadius:BorderRadius.circular(20.0),),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Title :',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    todo.todos![index].todo.toString(),
                    //' Do something nice for someokdjbnddsdsmvlbfbnlbznkkkkkkkk',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),

            Row(
              children: [
                const Text('completed :',
                  style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  todo.todos![index].completed.toString(),
                 // ' true',
                  style: const TextStyle(
                    fontSize: 17,
                  ),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}