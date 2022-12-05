import 'package:flutter/material.dart';

class Login_View extends StatelessWidget {
  static const String route = "/login_view";
  const Login_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              ///controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextField(
              //controller: descriptionController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              /////
              onPressed: () async{
                try{
                  await _controller.signIn(email,password); 
                  Navigator.pushNamed(context, FeedView.routeName);
                }catch(error){
                  print(error.toString());
                }
              },
              child: const Text('Log In'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () => nuevaTarea(context),
              child: const Text('Register'),
            )
          ],
        ),
      ),
    );
  }

  nuevaTarea(BuildContext context) {}
}
