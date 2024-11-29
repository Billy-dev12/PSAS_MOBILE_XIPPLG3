import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.red, 
                  ),
                  filled: true,
                  fillColor:
                      Colors.grey[200], 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red, 
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red, 
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.red, 
                  ),
                  filled: true,
                  fillColor:
                      Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red, 
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red, 
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.red, 
                  ),
                ),
              ),
            ),

           
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SuccessPage(), 
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white), 
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.red, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5, 
              ),
            ),

            
            SizedBox(
              height: 20,
            ), 
            ElevatedButton(
              onPressed: () {
                
                print("Sign Up button pressed");
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white), 
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.red, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), 
                ),
                elevation: 5, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Successful'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Selamat Anda Telah Login',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
