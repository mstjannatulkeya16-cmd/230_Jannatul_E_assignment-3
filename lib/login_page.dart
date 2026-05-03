import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 149, 135),

      appBar: AppBar(
        title: Text("Login Page"),
        titleTextStyle: GoogleFonts.lobster(
          color: const Color.fromARGB(255, 7, 111, 190),
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 230, 218, 222),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 700,
            child: Card(
              color: const Color.fromARGB(255, 164, 240, 153),
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login Form",
                        style: GoogleFonts.lobster(
                          color: const Color.fromARGB(255, 12, 4, 83),
                          fontSize: 40,
                        ),
                      ),

                      const SizedBox(height: 30),

                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              style: GoogleFonts.lobster(
                                color: const Color.fromARGB(255, 123, 12, 27),
                                fontSize: 18,
                              ),

                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "EMAIL",
                                hintStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 61, 57, 57),
                                  fontSize: 16,
                                ),

                                labelStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 64, 16, 128),
                                  fontSize: 18,
                                ),

                                prefixIcon: Icon(Icons.email),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),

                              /* validator: (value) {
                        if (emailController.text.isEmpty) {
                          return "Field is empty!!";
                        }
                        return null;*/
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Email is required!";
                                }
                                if (value.length < 5 || !value.contains('@')) {
                                  return "Enter a valid email address!";
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 20),

                            TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              style: GoogleFonts.lobster(
                                color: const Color.fromARGB(255, 140, 2, 13),
                                fontSize: 18,
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Phone number is required!";
                                }
                                if (value.length < 10) {
                                  return "Enter a valid phone number!";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.phone),
                                hintText: "Enter Phone Number",
                                labelText: "NUMBER",
                                hintStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 61, 57, 57),
                                  fontSize: 16,
                                ),

                                labelStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 64, 16, 128),
                                  fontSize: 18,
                                ),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            TextFormField(
                              controller: passController,
                              obscureText: true,
                              style: GoogleFonts.lobster(
                                color: const Color.fromARGB(255, 140, 2, 13),
                                fontSize: 18,
                              ),

                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "PASSWORD",
                                hintStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 61, 57, 57),
                                  fontSize: 16,
                                ),

                                labelStyle: GoogleFonts.lobster(
                                  color: Color.fromARGB(255, 64, 16, 128),
                                  fontSize: 18,
                                ),

                                prefixIcon: Icon(Icons.lock),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required!";
                                }
                                if (value.length < 6) {
                                  return "Minimum 6 characters!";
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 30),

                            ElevatedButton(
                              onPressed: () {
                                ElevatedButton(
                                  onPressed: () {
                                    _formKey.currentState!.validate();
                                  },
                                  child: Text("Login"),
                                );

                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Login Successful!"),
                                    ),
                                  );
                                }
                              },

                              child: Text(
                                "Login",
                                style: GoogleFonts.lobster(
                                  color: const Color.fromARGB(255, 190, 7, 7),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "Don't have an account? Register",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 13, 12, 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
