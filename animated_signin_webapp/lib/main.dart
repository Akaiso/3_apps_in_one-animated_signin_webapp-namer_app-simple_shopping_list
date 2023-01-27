import 'package:flutter/material.dart';


void main(){
  runApp(const SignUpApp());
}

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context)=> SignUpScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(width: 400, child: Card(child: SignUpForm(),),)),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _userNameTextController = TextEditingController();

  double _formProgress = 0;


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        LinearProgressIndicator(value: _formProgress),
        Text('SignUp', style: Theme.of(context).textTheme.headlineMedium,),
        Padding(padding: const EdgeInsets.all(8.0), child: TextFormField(controller: _firstNameTextController,
        decoration: const InputDecoration(hintText: 'First name'),),),
        Padding(padding: const EdgeInsets.all(8.0), child: TextFormField(controller: _lastNameTextController,
        decoration: const InputDecoration(hintText: 'Last name'),),),
        Padding(padding: const EdgeInsets.all(8.0), child: TextFormField(controller: _userNameTextController,
        decoration: const InputDecoration(hintText: 'User name'),),),

        TextButton(
          style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            return states.contains(MaterialState.disabled) ? null : Colors.blue;
          }) ),
          onPressed: null, child: const Text('Sign Up')),
        
      ]),
    );
  }
}