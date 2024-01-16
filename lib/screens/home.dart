import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                  "https://logowik.com/content/uploads/images/restaurant9491.logowik.com.webp"),
            ),
            const Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 152, 0),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              "Username:",
              style: TextStyle(
                color: Color.fromARGB(255, 97, 97, 96),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    labelText: "Username...",
                    labelStyle: TextStyle(color: Color.fromARGB(133, 3, 3, 3))),
              ),
            ),
            const Text(
              "Password:",
              style: TextStyle(
                color: Color.fromARGB(255, 97, 97, 96),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  labelText: "Password...",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 1.6,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
