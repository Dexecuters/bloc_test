import 'package:bloc_test/views/test2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/testing_bloc.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer(
        bloc:BlocProvider.of<TestingBloc>(context),
        listener: (context, state) {
          // TODO: implement listener
          if(state is Success){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Test2()));
          }
        },
        builder: (context, state) {
          if(state is TestingInitial){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(onPressed: () {

                  BlocProvider.of<TestingBloc>(context).add(TheTestingEvent());

                }, child: Text("Pag1")),
              )
            ],
          );}else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
