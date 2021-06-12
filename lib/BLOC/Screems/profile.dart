import'package:flutter/material.dart';

import 'package:loginprueba/BLOC/Screems/textInput.dart';



class Profile extends StatelessWidget {

final _controllerName=TextEditingController();
//final _controllerHobbies=TextEditingController();//
final _controllerUsername=TextEditingController();
final _controllerPassword=TextEditingController();
final _controllerRepeatPassword=TextEditingController();


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
                 image: AssetImage("assets/img/camara.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),
          
           ), // foto
           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Profile",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),//Titulo
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Email address",inputType: TextInputType.name,controller: _controllerName,maxLineas: 1, hint: 'Email address',),

           ),//Nomnre
           
           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Username",inputType: TextInputType.name,controller: _controllerUsername,maxLineas: 1, hint: 'Username',),
          

           ),

           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Password",inputType: TextInputType.name,controller: _controllerPassword,maxLineas: 1, hint: 'Password',),

           ),

           Container(margin: EdgeInsets.only(top:15.0),
           child: TextInput(hintText:"Repeat Password",inputType: TextInputType.name,controller: _controllerRepeatPassword,maxLineas: 1, hint: 'Repeat Password',),

           ),

           Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.lightBlue,
             child: Text('Sing Up',style: TextStyle (color: Colors.white)
             ,),),),
           ),

           Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 580, left: 100),
                    child: Image(
                      image: AssetImage("assets/img/google.png"),
                    ),
                  )

         ],) 
       )
     );
  }
 

} 