import'package:flutter/material.dart';

import 'package:loginprueba/BLOC/Screems/textInput.dart';



class Register extends StatelessWidget {



final _controllerEnter=TextEditingController();
final _controllerPass=TextEditingController();



  @override
  Widget build(BuildContext context) {
     
     return Scaffold( 
       body: Container(
         child: ListView(children:<Widget> [
           Container( 
             height: 250.0,
             width: 250.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/user.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),
          
           ), // foto
           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Login",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),//Titulo
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Enter your email address",inputType: TextInputType.name,controller: _controllerEnter,maxLineas: 1, hint: 'Enter your email address',),

           ),//Nomnre
           
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Password",inputType: TextInputType.name,controller: _controllerPass,maxLineas: 1, hint: 'Password',),
          

           ),

           

           Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.lightBlue,
             child: Text('Log in',style: TextStyle (color: Colors.white)
             ,),),)
             ,

             
           ),

           

                  

         ],) 
       )
     );
  }
 

} 