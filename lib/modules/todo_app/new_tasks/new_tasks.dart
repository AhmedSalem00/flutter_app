import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:flutter_app/shared/components/constans.dart';
import 'package:flutter_app/shared/shared_cubit/cubit.dart';
import 'package:flutter_app/shared/shared_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewTasksScreen extends StatelessWidget {
    @override
  Widget build(BuildContext context) {

    return BlocConsumer< AppCubit, AppStates > (
      listener: (context, state){},
      builder: (context , state){
        var tasks = AppCubit.get(context).newTasks;

        return tasksBuilder(
          tasks: tasks,
        );
      } ,
    );
  }

}