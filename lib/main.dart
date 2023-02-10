import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Store Redirect Open App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green)
          ),
          child: const Text("Redirect Open App"),
          onPressed: () {
            StoreRedirect.redirect(
              androidAppId: "com.fluttertutorial.store",
            );
          },
        ),
      ),
    );
  }
}