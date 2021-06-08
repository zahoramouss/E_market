import 'package:flutter/material.dart';

import '../background.dart';
import '../widgets/widgets.dart';
class SingUp extends StatefulWidget {
  // var emailController = TextEditingController();
  //var passwordController = TextEditingController();
  //var confirmPasswordController = TextEditingController();
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final GlobalKey<FormState>_formKey=GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Background(),
        Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.transparent,



            elevation: 0.0,


          ),

          backgroundColor: Colors.transparent,


          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(

                children:[

                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),),
                      elevation: 10,
                      color: Colors.white,


                      child: Container(
                        height: 550.0,
                        width: 400.0,
                        padding: EdgeInsets.all(16) ,
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(

                              children:<Widget> [
                                //Column(
                                //   children: [
                                SizedBox(
                                  height: 10,
                                ),
                                //full name
                                TextFormField(

                                  decoration: InputDecoration(labelText: 'Full Name',
                                    border:OutlineInputBorder(), ),
                                  keyboardType: TextInputType.name,

                                  obscureText: true,
                                  validator: (value)
                                  {
                                    if(value.isEmpty|| value.length <=5)
                                    {
                                      return 'invalid full name';
                                    }
                                    return null;
                                  },

                                  onSaved: (value)
                                  {

                                  },

                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                //email
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Email',
                                    border:OutlineInputBorder(), ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value)
                                  {
                                    if(value.isEmpty || !value.contains('@'))
                                    {
                                      return'invalid email';
                                    }
                                    return null;
                                  },
                                  onSaved: (value)
                                  {

                                  } ,

                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Phone',
                                    border:OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.flag,
                                    ),),
                                  keyboardType: TextInputType.phone,
                                  obscureText: true,
                                  validator: (value)
                                  {
                                    if(value.isEmpty|| value.length <=5)
                                    {
                                      return 'invalid phone';
                                    }
                                    return null;
                                  },
                                  onSaved: (value)
                                  {

                                  },
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                //password
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Password',
                                    border:OutlineInputBorder(),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye,
                                    ) , ),
                                  obscureText: true,
                                  controller: _passwordController,
                                  validator: (value)
                                  {
                                    if(value.isEmpty|| value.length<=5)
                                    {
                                      return 'invalid password';
                                    }
                                    return null;
                                  },
                                  onSaved: (value)
                                  {

                                  },
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                //confirm password
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Confirm Password',
                                    border:OutlineInputBorder(),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye,
                                    ),),
                                  obscureText: true,
                                  validator: (value)
                                  {
                                    if(value.isEmpty|| value !=_passwordController.text)
                                    {
                                      return 'invalid password';
                                    }
                                    return null;
                                  },
                                  onSaved: (value)
                                  {

                                  },
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Address',
                                    border:OutlineInputBorder(), ),
                                  obscureText: true,
                                  keyboardType: TextInputType.text,
                                  validator: (value)
                                  {
                                    if(value.isEmpty|| value.length<=5)
                                    {
                                      return 'invalid address';
                                    }
                                    return null;
                                  },
                                  onSaved: (value)
                                  {

                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.redAccent,
                                  child:MaterialButton (  // RaisedButton (
                                    child: Text(
                                      'Sing Up',
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    onPressed: ()
                                    {

                                    },

                                  ),

                                ),

                              ],
                            ),

                            // ],
                          ),
                          //],
                        ),
                        //],
                      ),
                    ),
                    // ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        'Already have an account?',
                      ),
                      TextButton(onPressed: (){},
                        child: Text(
                          'Sing Up',
                        ),),

                    ],
                  ),

                  //  ),
                ],
              ),
            ),
          ),

        ),







      ],

    );



  }
}



