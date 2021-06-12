import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:loginprueba/BLOC/Screems/resgister.dart';

import 'BLOC/BLOC_user.dart';
import 'BLOC/Screems/profile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(child:MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     
     // home: Profile(),
      home: Register(),
    ) , bloc: UserBloc());
    
  }
}