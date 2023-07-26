import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ttest/cubet/cubet.dart';
import 'package:ttest/cubet/state.dart';

class counter extends StatelessWidget {
  const counter({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<counterubit,counterstate>(
      listener: (context, state)
      {

      },
      builder: (context, state) {
        var cubit=counterubit.get(context);
        return Scaffold(appBar: AppBar( title: Text('app'),),
          body: Center(child: Row(children:
          [
            IconButton(onPressed: ()
            {
            cubit.decrement();
            }, icon: Icon(Icons.remove),),
            SizedBox(width: 20,),
            Text(cubit.count.toString()),
            SizedBox(width: 20,),
            IconButton(onPressed: ()
            {
              cubit.increment();
            }, icon: Icon(Icons.add),),
          ])),);
      },
    );
  }
}
